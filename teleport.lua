-- Script complet à copier-coller directement dans Delta
local TeleportService = game:GetService("TeleportService")
local placeId = 109983668079237 
local jobId = "acfac657-54d0-4d57-81f4-82b68bd06c56"

local function rejoindreServeur()
    local success, result = pcall(function()
        TeleportService:TeleportToPlaceInstance(placeId, jobId, game.Players.LocalPlayer)
    end)
    
    if not success then
        warn("Erreur lors de la téléportation : " .. tostring(result))
    end
end

rejoindreServeur()
