local plr = game.Players.LocalPlayer;
local Char = game.Players.LocalPlayer.Character;
local Teleporting = game:GetService("TeleportService");
local CFrameEnd1 = CFrame.new(154.520203, 19.8999958, -585.97937, 0.0444632471, -8.15364203e-08, -0.99901104, 3.72954645e-09, 1, -8.1451148e-08, 0.99901104, -1.04275512e-10, 0.0444632471);
local Time1 = 5;
local Teleporting = game:GetService("TeleportService");
local CFrameEnd2 = CFrame.new(140.716858, 109.399971, -685.916382, -0.832346022, 2.70630345e-08, -0.55425632, 4.32807967e-09, 1, 4.2328022e-08, 0.55425632, 3.28326948e-08, -0.832346022);
local Time2 = 5;
wait(5)
if game.PlaceId ~= 1930863474 then
Teleporting:Teleport(1930863474, plr)
else

 

    wait(2)
tween1:Play()
tween1.Completed:Wait(X)
wait(3)
game:GetService("Players").LocalPlayer.Character.SpiderBaby.Head.PickUpScript.ThrowRE:FireServer()
wait(3)
tween2:Play()
tween2.Completed:Wait(X) -- Completes, no need for additional wait time
while wait(0.5) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(484, 68, 270)
    wait(3)
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == "Rock" then
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v, 0)
            wait()
            firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, v, 1)
        end
end

    if game.Workspace:FindFirstChild("Hook") then
        game:GetService("Workspace").NukeToTheFaceRE:FireServer()
end
if plr.PlayerGui.ItemGained.Frame.Visible == true then
    wait(3)
Teleporting:Teleport(1930863474, plr)
end
end
end
