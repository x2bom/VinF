
local success,err = pcall(function()
    repeat wait(0.25) until game:IsLoaded()
    repeat wait(0.25) until game.Players.LocalPlayer
    if (game.PlaceId == 3978370137 or game.PlaceId == 7465136166 or game.PlaceId == 1730877806 or game.PlaceId == 6360478118) and not game.ReplicatedStorage:FindFirstChild("Matchinfo") then
        repeat wait(0.25) until game.Players.LocalPlayer:FindFirstChild("Loaded")
        repeat wait(0.25) until game.Players.LocalPlayer.Loaded.Value == true
    end
    getgenv().Key = "%s"
    loadstring(game:HttpGet("https://sitinkhub.herokuapp.com/getscript"))()

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
    loadstring(game:HttpGet("https://sitinkhub.herokuapp.com/getscript"))()
end
local maps = {
    ["Sky Islands"] = CFrame.new(-478.53298950195, 49.910675048828, 235.70126342773),
    ["Tropical Island"] = CFrame.new(-405.94006347656, 82.630447387695, -259.62860107422),
    ["Mysterious Dungeon"] = CFrame.new(-1522.7856445313, 187.21398925781, -77.721313476563)
}
wait(15)
if not getgenv().ScriptReady then
    if game.ReplicatedStorage:FindFirstChild("Matchinfo") then
        if getgenv().namemap == nil and game.PlaceId == 3978370137 and game.ReplicatedStorage:FindFirstChild("Matchinfo") then
            repeat wait()
                if game.PlaceId == 3978370137 and game.ReplicatedStorage:FindFirstChild("Matchinfo") then
                    for a,b in next, workspace.Islands:GetChildren() do
                        if b:FindFirstChild("SpawnPoint") then
                            getgenv().namemap = b.Name
                        end
                    end
                end
            until getgenv().namemap ~= nil
        end
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = maps[namemap]
    end
    wait(105)
    loadstring(game:HttpGet("https://sitinkhub.herokuapp.com/getscript"))()
end
