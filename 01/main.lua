local calc = require "lib/calc"

local function getLinesFromFile(file)
    local f = io.open(file, 'r')
    
    if not f then return nil end
    
    local lines = {}
    for line in f:lines() do
        table.insert(lines, line)
    end
    
    f:close()
    
    return lines
end

local part = arg[1]
local file = arg[2]

if part == nil or part == '' then
    print("ERROR: A part argument is required")
    return
end

if file == nil or file == '' then
    print("ERROR: A file is required")
return
end

local lines = getLinesFromFile(file)
if lines == nil or #lines < 1 then
    print("ERROR: Could not read file, or file is empty")
    return
end

if part == 'part1' then
    local highestTotal = calc.getHighestTotalFromLines(lines)

    print(highestTotal)
    return
end

if part == 'part2' then
    local sumOfLargestThreeHighestTotals = calc.getSumOfLargestThreeHighestTotalsFromLines(lines)

    print(sumOfLargestThreeHighestTotals)
    return
end

