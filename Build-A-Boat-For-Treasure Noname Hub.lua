local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/GUI"))() 
local Window = Library.CreateLib("NONAME HUB", "DarkTheme")

local Tab = Window:NewTab("💳 Auto Farm") local Section = Tab:NewSection("🧧 Script Auto Farm")
Section:NewButton("Click", " Auto Farm Script", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Auto%20Farm.lua"))() end)
local Section = Tab:NewSection("🚀 Teleport Farm")
Section:NewButton("Auto Teleport Farm", "Respawned = Stop Script Auto Farm", -- // Custom Settings
getgenv().TreasureAutoFarm = {
    Enabled = true, -- // Toggle the auto farm on and off
    Teleport = 3, -- // How fast between each teleport between the stages and stuff
    TimeBetweenRuns = 5 -- // How long to wait until it goes to the next run
}

-- // Services
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")

-- // Vars
local LocalPlayer = Players.LocalPlayer

-- // Goes through all of the stages
local autoFarm = function(currentRun)
    -- // Variables
    local Character = LocalPlayer.Character
    local NormalStages = Workspace.BoatStages.NormalStages

    -- // Go to each stage thing
    for i = 1, 10 do
        local Stage = NormalStages["CaveStage" .. i]
        local DarknessPart = Stage:FindFirstChild("DarknessPart")

        if (DarknessPart) then
            -- // Teleport to next stage
            print("Teleporting to next stage: Stage " .. i)
            Character.HumanoidRootPart.CFrame = DarknessPart.CFrame

            -- // Create a temp part under you
            local Part = Instance.new("Part", LocalPlayer.Character)
            Part.Anchored = true
            Part.Position = LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 6, 0)

            -- // Wait and remove temp part
            wait(getgenv().TreasureAutoFarm.Teleport)
            Part:Destroy()
        end
    end

    -- // Go to end
    print("Teleporting to the end")
    repeat wait()
        Character.HumanoidRootPart.CFrame = NormalStages.TheEnd.GoldenChest.Trigger.CFrame
    until Lighting.ClockTime ~= 14

    -- // Wait until you have respawned
    local Respawned = false
    local Connection
    Connection = LocalPlayer.CharacterAdded:Connect(function()
        Respawned = true
        Connection:Disconnect()
    end)

    repeat wait() until Respawned
    wait(getgenv().TreasureAutoFarm.TimeBetweenRuns)
    print("Auto Farm: Run " .. currentRun .. " finished")
end
end)


local Tab = Window:NewTab("🔨 Auto Builder") 
local Section = Tab:NewSection("🧱 Script Auto Builder")

Section:NewButton("Click", "🧱 Script Auto Builder", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Auto%20Builder.lua"))() end)

local Section = Tab:NewSection("🎨 Script Auto Builder Image")

Section:NewButton("Click", "🎨Script Auto Builder Image", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Auto%20Builder%20Image.lua"))() end)

local Tab = Window:NewTab("👑 Fake") 
local Section = Tab:NewSection("∞ Fake Gold")

Section:NewButton("Click", "NONAME HUB", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Fake%20Gold"))()
end)

local Section = Tab:NewSection("🧱 Fake Blocks")

Section:NewButton("Click", "NONAME HUB", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Fake%20All.lua"))()
end)

local Tab = Window:NewTab("🎄 Quests") 
local Section = Tab:NewSection("🍞 Bread Quest")
Section:NewButton("Click", "Loads in the fabbie boss (you need to be leader for this to work", function() workspace.QuestMakerEvent:FireServer(100) end)

local Section = Tab:NewSection("🎁 Gift Quest")
Section:NewButton("Click", "Loads in the gingerbread Fight (you need to be leader for this to work", function() workspace.QuestMakerEvent:FireServer(99) end)

local Section = Tab:NewSection("👩‍👧‍👧 Christmas Quest")
Section:NewButton("Click", "Loads in the xmas Fight (you need to be leader for this to work", function() workspace.QuestMakerEvent:FireServer(101) end)

local Tab = Window:NewTab("🎄 Auto Loop Quest") 

local Section = Tab:NewSection("🍞 Loop Quest Bread Quest")
Section:NewToggle("Click 150 Seconds", "can't stop If you stop will join the game again.", function() 
while true do
		workspace.QuestMakerEvent:FireServer(100)
	wait(150) 
end
	end)

local Section = Tab:NewSection("🎁 Loop Quest Gift Quest")
Section:NewToggle("Click 150 Seconds", "can't stop If you stop will join the game again.", function() 
while true do
	workspace.QuestMakerEvent:FireServer(99)
	wait(150) 
end
	end)
		
local Section = Tab:NewSection("👩‍👩‍ Loop Quest Christmas Quest")
Section:NewToggle("Click 150 Seconds", "can't stop If you stop will join the game again.", function()
while true do
	workspace.QuestMakerEvent:FireServer(101)
	wait(150) 
end
	end)

local Tab = Window:NewTab("🌌 Teleport Player !")

local Section = Tab:NewSection("📃 Select Player !")
Plr = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name) 
end

local drop = Section:NewDropdown("📃 Select Player!", "Click To Select", Plr, function(t)
   PlayerTP = t
end)
Section:NewButton("🎯 Click To TP", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end)
Section:NewToggle("🎯 Auto Tp", "", function(t)
_G.TPPlayer = t
while _G.TPPlayer do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end
end)

Section:NewButton("💾 Refresh","Refresh", function()
  drop:Refresh(Plr)
end)

local Tab = Window:NewTab("🌌 Teleport")

local Section = Tab:NewSection("⬜ White")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.0028458, -9.65999889, -567.075378, -0.999934494, 1.69590315e-08, -0.0114457831, 1.56394382e-08, 1, 1.15380317e-07, 0.0114457831, 1.15193757e-07, -0.999934494) end)

local Section = Tab:NewSection("⬛ Black")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-550.587769, -9.65999889, -69.4330597, 0.044106476, -2.16794671e-09, -0.999026835, -4.38382752e-09, 1, -2.36360198e-09, 0.999026835, 4.48381154e-09, 0.044106476) end)

local Section = Tab:NewSection("🟥 Red")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(443.415039, -9.65999889, -64.935936, -0.0039063096, -1.38479038e-07, 0.999992371, 2.78122503e-08, 1, 1.38588746e-07, -0.999992371, 2.83534085e-08, -0.0039063096) end)

local Section = Tab:NewSection("🟦 Blue")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(443.401245, -9.65999889, 300.047424, 0.0413250774, -1.24215788e-07, 0.999145746, 3.61023424e-08, 1, 1.2282878e-07, -0.999145746, 3.09955936e-08, 0.0413250774) end)
                
local Section = Tab:NewSection("🟩 Green")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new( -550.645752, -9.65999889, 293.29657, 0.0522636063, 3.91167561e-08, -0.998633325, -3.50806033e-08, 1, 3.73343418e-08, 0.998633325, 3.30814345e-08, 0.0522636063) end)

local Section = Tab:NewSection("🟨 Yellow")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-550.60083, -9.65999889, 640.269409, 0.0527031086, 5.94260179e-08, -0.998610198, 9.28528578e-08, 1, 6.44091642e-08, 0.998610198, -9.61183773e-08, 0.0527031086) end)

local Section = Tab:NewSection("🟪 Magenta")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(443.725342, -9.89999676, 647.826416, -0.00752122747, -6.9397494e-08, 0.999971688, -4.07260288e-08, 1, 6.90931401e-08, -0.999971688, -4.02052116e-08, -0.00752122747) end)

local Tab = Window:NewTab("👨‍💻 Player")

local Section = Tab:NewSection("🎛 All Deffault")

Section:NewButton("Deffault", "WalksSpeed & JumpPower Deffault", function() 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 end)

local Section = Tab:NewSection("⚡ WalksSpeed")

Section:NewButton("Speed 45", "WalksSpeed", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 45 end)
Section:NewButton("Speed 90", "WalksSpeed", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 90 end) 

local Section = Tab:NewSection("⚡ WalksSpeed Deffault")

Section:NewButton("Deffault", "WalksSpeed Deffault", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 end)

local Section = Tab:NewSection("🦵 JumpPower")

Section:NewButton("JumpPower 100", "JumpPower", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100 end)
Section:NewButton("JumpPower 200", "JumpPower", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200 end)

local Section = Tab:NewSection("🦵 JumpPower Deffault")

Section:NewButton("Deffault", "JumpPower Deffault", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 end)

local Tab = Window:NewTab("🎮 Main") 

local Section = Tab:NewSection("↻ Rejoin")

Section:NewButton("Click", "ออกเข้าใหม่", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/blox-fruit-fake-level-/main/Rejoin%20Game.lua"))() end)

local Section = Tab:NewSection("👁‍ X-Ray")
Section:NewToggle("Click", "Press X To X-Ray", function() 
		local t=false

local function scan(z,t)
for _,i in pairs(z:GetChildren()) do
if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
i.LocalTransparencyModifier=t
end

scan(i,t)
end
end

function x(v)
if v then
scan(workspace,0.5)
else
scan(workspace,0)
end
end

game:GetService("UserInputService").InputBegan:connect(function (input)
if input.UserInputType==Enum.UserInputType.Keyboard and input.KeyCode==Enum.KeyCode.X then
t=not t
x(t)
end
end)
end)
		
local Section = Tab:NewSection("❄ Infinite Yield")

Section:NewButton("Click", "เปิด Infinite Yield", function() loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"),true ))() end)

local Section = Tab:NewSection("🕧 Anit AFK")
  
Section:NewButton("Click", "เปิด Anit AFK", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Roblox-Script-AFK/main/Script%20AFK.lua"))() end)

local Section = Tab:NewSection("☁ Remove Fog")
  
Section:NewButton("Click", "", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Remove%20Fog.lua"))() end)


local Tab = Window:NewTab("🎫 credit") local Section = Tab:NewSection("By: peatchXD")

Section:NewKeybind("⚙ press to change button", "KeybindInfo", Enum.KeyCode.F, function() Library:ToggleUI() end)  
