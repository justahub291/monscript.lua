local url = "https://raw.githubusercontent.com/justahub291/monscript.lua/refs/heads/main/teleport.lua"

local success, response = pcall(function()
    return game:HttpGet(url)
end)

if success and response then
    local func, err = loadstring(response)
    if func then
        func()
        print("Script exécuté avec succès !")
    else
        warn("Erreur lors du chargement (loadstring) : " .. tostring(err))
    end
else
    warn("Impossible de télécharger le script via HttpGet. Vérifie l'URL.")
end
