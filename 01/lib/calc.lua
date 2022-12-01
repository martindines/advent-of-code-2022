local calc = {}

function calc.parseLinesAsTotals(lines)
    local totalIndex = 1
    local totals = {}

    for i, line in pairs(lines) do
        if line == nil or line == '' then
            totalIndex = totalIndex + 1
        else
            totals[totalIndex] = (totals[totalIndex] or 0) + tonumber(line)
        end
    end

    return totals
end

function calc.getHighestTotalFromTotals(totals)
    return math.max(unpack(totals))
end

function calc.getHighestTotalFromLines(lines)
    local totals = calc.parseLinesAsTotals(lines)
    local highestTotal = calc.getHighestTotalFromTotals(totals)
    return highestTotal
end

return calc
