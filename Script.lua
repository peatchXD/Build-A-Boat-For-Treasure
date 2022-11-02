local Server = syn.request({
    Url = "http://127.0.0.1/WHITELIST%20NONAME%20HUB/Server.php?Key=".. _G.Key .."&HWID="..HWID,
    Method = "GET"
}).Body

if Server == "WHITELIST !" then
    print("SCRIPT")
elseif Server == "Invaid HWID !" then
    game.Players.LocalPlayer:kick("Invaid HWID")
elseif Server == "Invaid Key" then
    game.Players.LocalPlayer:kick("Invaid Key")
else
    game.Players.LocalPlayer:kick("Invaid Key")
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/peatchXD/Build-A-Boat-For-Treasure/main/Build-A-Boat-For-Treasure%20Noname%20Hub.lua"))()
