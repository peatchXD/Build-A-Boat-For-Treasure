local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/GUI"))() 
local Window = Library.CreateLib("NONAME HUB", "DarkTheme")

local Tab = Window:NewTab("π³ Auto Farm") local Section = Tab:NewSection("π§§ Script Auto Farm")
Section:NewButton("Click", " Auto Farm Script", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Auto%20Farm.lua"))() end)
local Section = Tab:NewSection("π Teleport Farm")
Section:NewButton("Auto Teleport Farm", "Respawned = Stop Script Auto Farm", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Auto%20Teleport%20Farm.lua"))() end)

local Tab = Window:NewTab("π¨ Auto Builder") 
local Section = Tab:NewSection("π§± Script Auto Builder")

Section:NewButton("Click", "π§± Script Auto Builder", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Auto%20Builder.lua"))() end)

local Section = Tab:NewSection("π¨ Script Auto Builder Image")

Section:NewButton("Click", "π¨Script Auto Builder Image", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Auto%20Builder%20Image.lua"))() end)

local Tab = Window:NewTab("π Fake") 
local Section = Tab:NewSection("β Fake Gold")

Section:NewButton("Click", "NONAME HUB", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Fake%20Gold"))()
end)

local Section = Tab:NewSection("π§± Fake Blocks")

Section:NewButton("Click", "NONAME HUB", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Fake%20All.lua"))()
end)

local Tab = Window:NewTab("π Quests") 
local Section = Tab:NewSection("π Bread Quest")
Section:NewButton("Click", "Loads in the fabbie boss (you need to be leader for this to work", function() workspace.QuestMakerEvent:FireServer(100) end)

local Section = Tab:NewSection("π Gift Quest")
Section:NewButton("Click", "Loads in the gingerbread Fight (you need to be leader for this to work", function() workspace.QuestMakerEvent:FireServer(99) end)

local Section = Tab:NewSection("π©βπ§βπ§ Christmas Quest")
Section:NewButton("Click", "Loads in the xmas Fight (you need to be leader for this to work", function() workspace.QuestMakerEvent:FireServer(101) end)

local Section = Tab:NewSection("π Auto Loop Quest") 

local Section = Tab:NewSection("π Loop Quest Bread Quest")
Section:NewToggle("Click 150 Seconds", "can't stop If you stop will join the game again.", function() 
while true do
		workspace.QuestMakerEvent:FireServer(100)
	wait(150) 
end
	end)

local Section = Tab:NewSection("π Loop Quest Gift Quest")
Section:NewToggle("Click 150 Seconds", "can't stop If you stop will join the game again.", function() 
while true do
	workspace.QuestMakerEvent:FireServer(99)
	wait(150) 
end
	end)
		
local Section = Tab:NewSection("π©βπ©β Loop Quest Christmas Quest")
Section:NewToggle("Click 150 Seconds", "can't stop If you stop will join the game again.", function()
while true do
	workspace.QuestMakerEvent:FireServer(101)
	wait(150) 
end
	end)

local Section = Tab:NewSection("π₯ Event BOSS")
Section:NewButton("π HALLOWEEN BOSS", " TP ", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/AUTO%20FARM%20HALLOWEEN%20BOSS.lua"))() end)

Section:NewButton("π₯ EGG BOSS", " TP ", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/TP%20EGG%20%20BOSS.lua"))() end)


local Tab = Window:NewTab("π Teleport")

local Section = Tab:NewSection("π Teleport Player !")
Plr = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Plr,v.Name) 
end

local drop = Section:NewDropdown("π Select Player!", "Click To Select", Plr, function(t)
   PlayerTP = t
end)
Section:NewButton("π― Teleport", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end)
Section:NewToggle("π― Auto Teleport", "", function(t)
_G.TPPlayer = t
while _G.TPPlayer do wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlayerTP].Character.HumanoidRootPart.CFrame
end
end)

Section:NewButton("πΎ Refresh","Refresh", function()
  drop:Refresh(Plr)
end)


local Section = Tab:NewSection("β¬ White")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.0028458, -9.65999889, -567.075378, -0.999934494, 1.69590315e-08, -0.0114457831, 1.56394382e-08, 1, 1.15380317e-07, 0.0114457831, 1.15193757e-07, -0.999934494) end)

local Section = Tab:NewSection("β¬ Black")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-550.587769, -9.65999889, -69.4330597, 0.044106476, -2.16794671e-09, -0.999026835, -4.38382752e-09, 1, -2.36360198e-09, 0.999026835, 4.48381154e-09, 0.044106476) end)

local Section = Tab:NewSection("π₯ Red")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(443.415039, -9.65999889, -64.935936, -0.0039063096, -1.38479038e-07, 0.999992371, 2.78122503e-08, 1, 1.38588746e-07, -0.999992371, 2.83534085e-08, -0.0039063096) end)

local Section = Tab:NewSection("π¦ Blue")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(443.401245, -9.65999889, 300.047424, 0.0413250774, -1.24215788e-07, 0.999145746, 3.61023424e-08, 1, 1.2282878e-07, -0.999145746, 3.09955936e-08, 0.0413250774) end)
                
local Section = Tab:NewSection("π© Green")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new( -550.645752, -9.65999889, 293.29657, 0.0522636063, 3.91167561e-08, -0.998633325, -3.50806033e-08, 1, 3.73343418e-08, 0.998633325, 3.30814345e-08, 0.0522636063) end)

local Section = Tab:NewSection("π¨ Yellow")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-550.60083, -9.65999889, 640.269409, 0.0527031086, 5.94260179e-08, -0.998610198, 9.28528578e-08, 1, 6.44091642e-08, 0.998610198, -9.61183773e-08, 0.0527031086) end)

local Section = Tab:NewSection("πͺ Magenta")
Section:NewButton("Click", "NONAME HUB", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(443.725342, -9.89999676, 647.826416, -0.00752122747, -6.9397494e-08, 0.999971688, -4.07260288e-08, 1, 6.90931401e-08, -0.999971688, -4.02052116e-08, -0.00752122747) end)

local Tab = Window:NewTab("π¨βπ» Player")

local Section = Tab:NewSection("π Spectate Player")
Section:NewButton("π Spectate", " ", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Spectate%20Player"))() end)

local Section = Tab:NewSection("π All Deffault")

Section:NewButton("Deffault", "WalksSpeed & JumpPower Deffault", function() 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 end)

local Section = Tab:NewSection("β‘ WalksSpeed")

Section:NewButton("Speed 45", "WalksSpeed", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 45 end)
Section:NewButton("Speed 90", "WalksSpeed", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 90 end) 

local Section = Tab:NewSection("β‘ WalksSpeed Deffault")

Section:NewButton("Deffault", "WalksSpeed Deffault", function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 end)

local Section = Tab:NewSection("π¦΅ JumpPower")

Section:NewButton("JumpPower 100", "JumpPower", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100 end)
Section:NewButton("JumpPower 200", "JumpPower", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200 end)

local Section = Tab:NewSection("π¦΅ JumpPower Deffault")

Section:NewButton("Deffault", "JumpPower Deffault", function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50 end)

local Tab = Window:NewTab("π? Main") 

local Section = Tab:NewSection("β» Rejoin")

Section:NewButton("Click", "ΰΈ­ΰΈ­ΰΈΰΉΰΈΰΉΰΈ²ΰΉΰΈ«ΰΈ‘ΰΉ", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/blox-fruit-fake-level-/main/Rejoin%20Game.lua"))() end)

local Section = Tab:NewSection("πβ X-Ray")
Section:NewButton("Click", "Press X To X-Ray", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/X-Ray.lua"))() end)
		
local Section = Tab:NewSection("β Infinite Yield")

Section:NewButton("Click", "ΰΉΰΈΰΈ΄ΰΈ Infinite Yield", function() loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"),true ))() end)

local Section = Tab:NewSection("π§ Anit AFK")
  
Section:NewButton("Click", "ΰΉΰΈΰΈ΄ΰΈ Anit AFK", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Roblox-Script-AFK/main/Script%20AFK.lua"))() end)

local Section = Tab:NewSection("β Remove Fog")
  
Section:NewButton("Click", "", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Remove%20Fog.lua"))() end)

local Tab = Window:NewTab("π Script Hub")

local Section = Tab:NewSection("π Astra Hub")
Section:NewButton("Click", "", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Astra%20Hub.lua"))() end)

local Section = Tab:NewSection("π Emotes")
Section:NewButton("Click", "press to </ΰΈ‘ to Open", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Emotes.lua"))() end)

local Section = Tab:NewSection("π Max2007killer")
Section:NewButton("Click", "Key Donatepls152621", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Max2007killer.lua"))() end)

local Tab = Window:NewTab("π« credit") local Section = Tab:NewSection("By: peatchXD#6075")

Section:NewKeybind("β press to change button", "KeybindInfo", Enum.KeyCode.F, function() Library:ToggleUI() end)  
