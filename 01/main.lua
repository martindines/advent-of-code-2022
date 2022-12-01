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

local file = arg[1]

if file == nil or file == '' then
    print("ERROR: A file is required")
return
end

local lines = getLinesFromFile(file)
if lines == nil or #lines < 1 then
    print("ERROR: Could not read file, or file is empty")
    return
end

local highestTotal = calc.getHighestTotalFromLines(lines)

print(highestTotal)

