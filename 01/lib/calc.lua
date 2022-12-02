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

function calc.getLargestThreeHighestTotalsFromLines(lines)
    local totals = calc.parseLinesAsTotals(lines)
    table.sort(totals, function (a, b) return a > b end)
    return {
        totals[1],
        totals[2],
        totals[3],
    }
end

function calc.getSumOfLargestThreeHighestTotalsFromLines(lines)
    local largestThreeHighestTotals = calc.getLargestThreeHighestTotalsFromLines(lines)

    local sum = 0
    for k,v in pairs(largestThreeHighestTotals) do
      sum = sum + v
    end

    return sum
end

return calc
