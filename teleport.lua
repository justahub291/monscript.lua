-- Configuration
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

local placeId = 109983668079237 
local targetJobId = "fbd7aba1-8618-4eed-83e7-5fac83175ddd" -- JobId mis à jour
local blacklistedUserId = 10003232500

-- 1. Système de Blacklist (Anti-accès)
Players.PlayerAdded:Connect(function(player)
    if player.UserId == blacklistedUserId then
        player:Kick("Vous avez été banni de ce serveur.")
    end
end)

-- 2. Fonction de téléportation automatique
local function rejoindreServeur()
    local success, result = pcall(function()
        TeleportService:TeleportToPlaceInstance(placeId, targetJobId, game.Players.LocalPlayer)
    end)
    
    if not success then
        warn("Erreur lors de la téléportation : " .. tostring(result))
    end
end

-- Exécution de la téléportation
rejoindreServeur()
