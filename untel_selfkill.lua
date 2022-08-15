local RunService = game:GetService("RunService")
local lcplr = game.Players.LocalPlayer

function update()
    for _,p in pairs(game.Players:GetChildren()) do
        for _,b in pairs(p.Backpack:GetChildren()) do
            if p.Name == lcplr.Name or p.Name == game.Players.saha_1412.Name then
                break
            elseif b.Name == "pistol" then
                b.RemoteEvent:FireServer(game.Players[p.Name].Character.Humanoid) 
            end
        end
        for _,w in pairs(p.Character:GetChildren()) do
            if p.Name == lcplr.name then
                break
            elseif w.Name == "pistol" then
                w.RemoteEvent:FireServer(game.Players[p.Name].Character.Humanoid) 
            end
        end
    end
end

pcall(function()
    local cc = RunService.RenderStepped:Connect(update)
end)

lcplr.Chatted:Connect(function(msg)
    if msg == "--stop" then
        cc:Disconnect()
    end
end)
