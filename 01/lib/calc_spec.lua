local example = {
    "1000",
    "2000",
    "3000",
    "",
    "4000",
    "",
    "5000",
    "6000",
    "",
    "7000",
    "8000",
    "9000",
    "",
    "10000"
}

describe("calc module", function ()
    it("should return the total for each group of lines", function()
        local calc = require "lib.calc"
        local result = calc.parseLinesAsTotals(example)
        local expectedResult = {
            6000,
            4000,
            11000,
            24000,
            10000
        }
        assert.are.same(expectedResult, result)
    end)

    it("should return the highest total from totals", function()
        local calc = require "lib.calc"
        local totals = {
            6000,
            4000,
            11000,
            24000,
            10000
        }
        local result = calc.getHighestTotalFromTotals(totals)
        assert.are.same(24000, result)
    end)

    it("should return the highest total from input lines", function()
        local calc = require "lib.calc"
        local highestTotal = calc.getHighestTotalFromLines(example)
        assert.are.same(24000, highestTotal)
    end)

    it("should return the largest 3 highest totals from totals", function()
        local calc = require "lib.calc"
        local largestThreeHighestTotals = calc.getLargestThreeHighestTotalsFromLines(example)
        assert.are.same({24000, 11000, 10000}, largestThreeHighestTotals)
    end)

    it("should return the sum of the largest 3 highest totals from totals", function()
        local calc = require "lib.calc"
        local sumOfLargestThreeHighestTotals = calc.getSumOfLargestThreeHighestTotalsFromLines(example)
        assert.are.same(45000, sumOfLargestThreeHighestTotals)
    end)
end)