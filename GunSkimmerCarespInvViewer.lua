local Players = game:GetService("Players")
local Camera = workspace.CurrentCamera
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local vehicleESP = {}
local vehicleESPEnabled = true

local function isVehicle(model)
	return model:FindFirstChild("DriveSeat") ~= nil
end

local function updateVehicleESP()
	if not vehicleESPEnabled then
		for _, esp in pairs(vehicleESP) do
			if esp.name then esp.name.Visible = false end
			if esp.distance then esp.distance.Visible = false end
		end
		return
	end

	for _, obj in pairs(vehicleESP) do
		obj.name.Visible = false
		obj.distance.Visible = false
	end

	for _, vehicle in ipairs(workspace:GetChildren()) do
		if isVehicle(vehicle) then
			local seat = vehicle.DriveSeat
			local distance = (Camera.CFrame.Position - seat.Position).Magnitude
			if distance <= 2200 then
				local screenPos, onScreen = Camera:WorldToViewportPoint(seat.Position)
				if onScreen then
					local esp = vehicleESP[vehicle]
					if not esp then
						local nameLabel = Drawing.new("Text")
						nameLabel.Font = 0
						nameLabel.Size = 24
						nameLabel.Color = Color3.fromRGB(0, 255, 0)
						nameLabel.Center = true
						nameLabel.Outline = true
						nameLabel.OutlineColor = Color3.fromRGB(0, 0, 0)

						local distanceLabel = Drawing.new("Text")
						distanceLabel.Font = 0
						distanceLabel.Size = 24
						distanceLabel.Color = Color3.fromRGB(255, 255, 255)
						distanceLabel.Center = true
						distanceLabel.Outline = true
						distanceLabel.OutlineColor = Color3.fromRGB(0, 0, 0)

						esp = {
							name = nameLabel,
							distance = distanceLabel
						}
						vehicleESP[vehicle] = esp
					end

					esp.name.Text = "Car"
					esp.name.Position = Vector2.new(screenPos.X, screenPos.Y)
					esp.name.Visible = true

					esp.distance.Text = tostring(math.floor(distance / 3.64)) .. "m"
					esp.distance.Position = Vector2.new(screenPos.X, screenPos.Y + 14)
					esp.distance.Visible = true
				end
			end
		end
	end
end

workspace.ChildRemoved:Connect(function(child)
	local esp = vehicleESP[child]
	if esp then
		if esp.name then esp.name:Remove() end
		if esp.distance then esp.distance:Remove() end
		vehicleESP[child] = nil
	end
end)

RunService.RenderStepped:Connect(updateVehicleESP)

-- 🔑 F1 키로 토글
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.F1 then
		vehicleESPEnabled = not vehicleESPEnabled
		print("Vehicle ESP is now", vehicleESPEnabled and "ON" or "OFF")
		if not vehicleESPEnabled then
			for _, esp in pairs(vehicleESP) do
				esp.name.Visible = false
				esp.distance.Visible = false
			end
		end
	end
end)


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

local boxWidth = 280
local lineSpacing = 20

local box = Drawing.new("Square")
box.Filled = true
box.Transparency = 0.5
box.Color = Color3.new(0, 0, 0)
box.Visible = true
box.ZIndex = 1

local textLines = {}
local maxLines = 20

for i = 1, maxLines do
	local t = Drawing.new("Text")
	t.Size = 16
	t.Color = Color3.new(1, 1, 1)
	t.Outline = true
	t.Font = 2
	t.Visible = false
	t.ZIndex = 2
	table.insert(textLines, t)
end

local function updateBoxHeight(lineCount)
	local height = lineCount * lineSpacing + 10
	box.Size = Vector2.new(boxWidth, height)
end

local dragging = false
local dragStartPos = nil
local mouseStartPos = nil

box.Position = Vector2.new(Camera.ViewportSize.X - boxWidth - 20, 20)

UserInputService.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		local mousePos = Vector2.new(Mouse.X, Mouse.Y)
		if mousePos.X >= box.Position.X and mousePos.X <= box.Position.X + box.Size.X and
		   mousePos.Y >= box.Position.Y and mousePos.Y <= box.Position.Y + box.Size.Y then
			dragging = true
			dragStartPos = box.Position
			mouseStartPos = mousePos
		end
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = Vector2.new(Mouse.X, Mouse.Y) - mouseStartPos
		local newPos = dragStartPos + delta
		box.Position = newPos
		for i, t in ipairs(textLines) do
			if t.Visible then
				t.Position = Vector2.new(newPos.X + 5, newPos.Y + 5 + (i - 1) * lineSpacing)
			end
		end
	end
end)

local function getGunInfoLines(target)
	local lines = {}

	if not target or not target:FindFirstChild("GunInventory") then
		table.insert(lines, "표적 없음")
		return lines
	end

	table.insert(lines, target.Name .. " 님")

	local gunInventory = target:FindFirstChild("GunInventory")
	local gunObjects = gunInventory:GetChildren()

	if #gunObjects == 0 then
		table.insert(lines, "총 없음")
		return lines
	end

	for _, gunObj in ipairs(gunObjects) do
		if gunObj:IsA("ObjectValue") and gunObj.Value then
			local gunName = tostring(gunObj.Value)
			local scopeText = "배율없음"
			local reticleObj = gunObj:FindFirstChild("AttachmentReticle")
			if reticleObj and reticleObj:IsA("ObjectValue") and reticleObj.Value then
				scopeText = tostring(reticleObj.Value) .. "배율"
			end
			table.insert(lines, gunName .. " - " .. scopeText)

			local mag = gunObj:FindFirstChild("BulletsInMagazine")
			local reserve = gunObj:FindFirstChild("BulletsInReserve")
			if mag and reserve and mag:IsA("IntValue") and reserve:IsA("IntValue") then
				table.insert(lines, tostring(mag.Value) .. " / " .. tostring(reserve.Value))
			end
		end
	end

	return lines
end

local function getClosestPlayerToCenter()
	local closestPlayer = nil
	local closestDist = math.huge
	local screenCenter = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			local screenPos, onScreen = Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
			if onScreen then
				local dist = (Vector2.new(screenPos.X, screenPos.Y) - screenCenter).Magnitude
				if dist < closestDist then
					closestDist = dist
					closestPlayer = player
				end
			end
		end
	end

	return closestPlayer
end

RunService.RenderStepped:Connect(function()
	local target = getClosestPlayerToCenter()
	local lines = getGunInfoLines(target)

	updateBoxHeight(#lines)

	for i, t in ipairs(textLines) do
		t.Visible = false
	end

	for i, line in ipairs(lines) do
		local t = textLines[i]
		t.Text = line
		t.Visible = true
		t.Position = Vector2.new(box.Position.X + 5, box.Position.Y + 5 + (i - 1) * lineSpacing)
	end
end)
