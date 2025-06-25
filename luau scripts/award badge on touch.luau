-- setting up services
local BadgeService = game:GetService("BadgeService")
local Players = game:GetService("Players")

local badgeID = 69420 -- replace with your badge ID

local part = script.parent

local function AwardBadgeOnTouch(hit)
    local character = hit.Parent
    local player = Players:GetPlayerFromCharacter(character)
    if player then
        -- Check if player already has the badge
        local success, hasBadgeOrError = pcall(function()
            return BadgeService:UserHasBadgeAsync(player.UserId, badgeID)
        end)
        if not success then
            warn("Failed to check badge for player, " .. player.Name .. ": " .. tostring(hasBadgeOrError) .. " this is most likely because either roblox is down or the badge ID is invalid")
            return
        end

        if hasBadgeOrError then
            print(player.Name .. " already has the badge.")
            return
        end

        -- Try to award the badge
        local awardSuccess, awardError = pcall(function()
            BadgeService:AwardBadge(player.UserId, badgeID)
        end)
        if not awardSuccess then
            warn("Failed to award badge to " .. player.Name .. ": " .. tostring(awardError))
        else
            print("Awarded badge to " .. player.Name .. " successfully.")
        end
    end
end

if part then
    part.Touched:Connect(AwardBadgeOnTouch)
end
