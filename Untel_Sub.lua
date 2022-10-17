if not game:IsLoaded() then game.Loaded:Wait() end

coroutine.resume(coroutine.create(function()
    Host = "saha_1412"
    OnHost = true
    Prefix = "~"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sy-nn/synergy/additional/altcontrol",true))()
    while wait() do
        print() 
    end
end))

coroutine.resume(coroutine.create(function()
    local client = game.Players.LocalPlayer
    client.CharacterAdded:Wait()
    client.Character:WaitForChild("Humanoid")
    
    if game.PlaceId == 3952704772 then
    	for _,f in pairs(workspace:GetChildren()) do
    		if f.Name == "Part" and f.CFrame == CFrame.new(-50, 0, 50) then
    			f.Size = Vector3.new(2000, 20, 2000)
    		end
    	end
    	while true do
    		pcall(function()
    			for _,v in pairs(game.Players:GetChildren()) do
    				if v.Name ~= "saha_1412" then
    					v.Character.HumanoidRootPart.CanTouch = false
    					v.Character.HumanoidRootPart.CanCollide = false
    					v.Character.HumanoidRootPart.CanQuery = false
    				end
    			end
    		end)
    		task.wait()
    	end
    end
end))
