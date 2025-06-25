-- i haven't done anything with this yet, but i want to
-- update, rewriting the code into a function
local ErrorHandle = "the code didn't work, fuck you 🖕"
local function NumberCalc()
    local Value1 = 400000 -- assigning variables here
    local Value2 = 10
    Value1 = Value1 * 150 -- doing the main math
    Value2 = Value2 * nil
    local MergedValue = Value1 + Value2 -- combining values and outputting to console
    print(MergedValue)
end
local awesome, result = pcall(NumberCalc) -- error handler
if not awesome then
    print("Something went wrong and died! Guardsman is now running in headless mode. Debug information: ", ErrorHandle)
    result = ErrorHandle
end