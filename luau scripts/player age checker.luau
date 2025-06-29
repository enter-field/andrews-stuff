local PolicyService = game:GetService("PolicyService")
local Players = game:GetService("Players")
local PolicyInfo = PolicyService:GetPolicyInfoForPlayerAsync(game.Players:WaitForChild("TargetPlayerUsernameHere"))
local PolicyStatus = PolicyInfo.AreAdsAllowed

if PolicyStatus then	
	print("User is 13+.")
else
	print("User is <13.")
end

if PolicyStatus then -- extra debug check, feel free to remove if unwanted
	print("PolicyStatus returned with a true value for the target user.")
else
	print("PolicyStatus returned with a false value for the target player.")
end

--[[
some extra info regarding the variables
PolicyInfo = PolicyService's info on the target player for a specific policy, in this context it would be the AreAdsAllowed policy we use for the age check
PolicyStatus = piggybacks off of PolicyInfo's output to provide a boolean value for whether or not the target player is able to see immersive ads in game; very affective for age checking
]]