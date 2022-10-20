coroutine.wrap(function()
    Host = "saha_1412"
    OnHost = true
    Prefix = "|"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sy-nn/synergy/additional/altcontrol",true))()
end)

local Plr = game:GetService("Players").LocalPlayer -- you
local Player = game:GetService("Players").LocalPlayer-- you
local Character = Player.Character-- your character
local m = game.Players.LocalPlayer:GetMouse()
local check_r6 = Character:FindFirstChild("Torso")
local attacking = false

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(-30,0,0)
end)
end
end

local Hats = {
    gun = Character:FindFirstChild("Starslayer Railgun"),
    wheel1 = Character:FindFirstChild("Evil Aura"),
    wheel2 = Character:FindFirstChild("Northern Star"),
    bullet = Character:FindFirstChild("RockAccessory")
}

Hats.bullet.Handle.SpecialMesh:Destroy()

local function align(i,v,a,b,c,d,e,f,l,p,x,y,z)
i.AccessoryWeld:Remove()
i:BreakJoints()
i.Parent.Parent = game.Workspace
local att0 = Instance.new("Attachment", i)
att0.Position = Vector3.new(0,0,0) 
local att1 = Instance.new("Attachment", v)
att1.Position = Vector3.new(a,b,c)
att1.Rotation = Vector3.new(d,e,f)
if l then
game:GetService("RunService").Heartbeat:Connect(function()
att1.Rotation = att1.Rotation + Vector3.new(x,y,z)
end)
end
if p then
game:GetService("RunService").Heartbeat:Connect(function()
if not attacking then
if (Character:FindFirstChildOfClass("Tool") and Character:FindFirstChildOfClass("Tool").Name == "pistol") then
    att1.Position = Vector3.new(a,b,c)
else
    att1.Position = Vector3.new(0, 300, 0)
end
end
end)
end
local AP = Instance.new("AlignPosition", i)
AP.Attachment0 = att0
AP.Attachment1 = att1
AP.RigidityEnabled = false
AP.ReactionForceEnabled = false
AP.ApplyAtCenterOfMass = false
AP.MaxForce = 9999999
AP.MaxVelocity = math.huge
AP.Responsiveness = 10000
local AO = Instance.new("AlignOrientation", i)
AO.Attachment0 = att0
AO.Attachment1 = att1
AO.ReactionTorqueEnabled = false
AO.PrimaryAxisOnly = false
AO.MaxTorque = 9999999
AO.MaxAngularVelocity = math.huge
AO.Responsiveness = 10000000000000
game:GetService("RunService").Heartbeat:Connect(function()
    if Character.Humanoid.Health == 0 then
        i.Parent:Destroy() 
    end
end)
end

align(Hats.gun.Handle, Character["Right Arm"], 0, -1, -.8, 0, 90, -45, false, true, 0, 0, 0)
align(Hats.bullet.Handle, Character["Right Arm"], 0, -4, -1, 0, 90, -45, true, true, 1000, 1000, 100)
align(Hats.wheel1.Handle, Character["Head"], 0, 1, 0, 90, 15, 15, true, false, 0, 0, 15)
align(Hats.wheel2.Handle, Character["Head"], 0, 1, 0, 90, 15, 15, true, false, 0, 0, -15)

m.Button1Down:Connect(function()
    if not attacking and m.Target.Parent:FindFirstChild("Humanoid") then
        attacking = true
        Hats.bullet.Handle.Position = m.hit.p
        task.wait()
        attacking = false
    end
end)
