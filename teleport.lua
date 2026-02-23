local TeleportService = game:GetService("TeleportService")
local placeId = 109983668079237 
local jobId = "2a04c7a7-709a-4261-83c9-f69272bdcdcf"

local function rejoindreServeur()
    local success, result = pcall(function()
        TeleportService:TeleportToPlaceInstance(placeId, jobId, game.Players.LocalPlayer)
    end)
    
    if not success then
        warn("Erreur lors de la téléportation : " .. tostring(result))
    end
end

rejoindreServeur()
