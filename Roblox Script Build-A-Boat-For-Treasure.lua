local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure-Fake-ALL/main/GUI"))() 
local Window = Library.CreateLib("NONAME HUB", "DarkTheme")

local Tab = Window:NewTab("Auto Farm") local Section = Tab:NewSection("Script Auto Farm")
Section:NewButton("Click", "Auto Farm Script", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure-Fake-ALL/main/Auto%20Farm.lua"))() end)


local Tab = Window:NewTab("Fake Gold") 
local Section = Tab:NewSection("Fake Gold")

Section:NewButton("Click", "NONAME HUB", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure-Fake-ALL/main/Fake%20Gold"))()
end)

local Tab = Window:NewTab("Fake Blocks") 

local Section = Tab:NewSection("Fake Blocks")

Section:NewButton("Click", "NONAME HUB", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure-Fake-ALL/main/Fake%20All.lua"))()
end)

local Tab = Window:NewTab("Main") 

local Section = Tab:NewSection("Rejoin")

Section:NewButton("Click", "ออกเข้าใหม่", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/blox-fruit-fake-level-/main/Rejoin%20Game.lua"))() end)

local Section = Tab:NewSection("Infinite Yield")

Section:NewButton("Click", "เปิด Infinite Yield", function() loadstring(game:HttpGet(("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() end)

local Section = Tab:NewSection("Anit AFK")
  
Section:NewButton("Click", "เปิด Anit AFK", function() loadstring(game:HttpGet(("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure-Fake-ALL/main/AFK.lua"))() end)


local Tab = Window:NewTab("credit") local Section = Tab:NewSection("By: peatchXD")

Section:NewKeybind("กดเพื่อเปลื่ยนปุ่ม", "KeybindInfo", Enum.KeyCode.F, function() Library:ToggleUI() end)
