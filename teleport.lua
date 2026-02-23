-- Script mis à jour avec le JobId actuel
local TeleportService = game:GetService("TeleportService")
local placeId = 109983668079237 
local jobId = "fbd7aba1-8618-4eed-83e7-5fac83175ddd"

local function rejoindreServeur()
    local success, result = pcall(function()
        TeleportService:TeleportToPlaceInstance(placeId, jobId, game.Players.LocalPlayer)
    end)
    
    if not success then
        warn("Erreur lors de la téléportation : " .. tostring(result))
    end
end

rejoindreServeur()
