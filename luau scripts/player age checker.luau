local PolicyService = game:GetService("PolicyService")
local Players = game:GetService("Players")
local PolicyInfo = PolicyService:GetPolicyInfoForPlayerAsync(game.Players:WaitForChild("TargetPlayerUsernameHere"))
local PolicyStatus = PolicyInfo.AreAdsAllowed

if PolicyStatus then	
	print("User is 13+.")
else
	print("User is <13.")
end

print("PolicyStatus returned with:" .. tostring(PolicyStatus) .. " for user: " .. PolicyInfo.UserId .. ".")

--[[
some extra info regarding the variables
PolicyInfo = PolicyService's info on the target player for a specific policy, in this context it would be the AreAdsAllowed policy we use for the age check
PolicyStatus = piggybacks off of PolicyInfo's output to provide a boolean value for whether or not the target player is able to see immersive ads in game; very affective for age checking
]]