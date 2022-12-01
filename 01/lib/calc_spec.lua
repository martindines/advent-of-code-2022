describe("calc module", function ()
    it("should return the total for each group of lines", function()
        local calc = require "lib.calc"
        local lines = {
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
        local result = calc.parseLinesAsTotals(lines)
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
        local lines = {
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
        local highestTotal = calc.getHighestTotalFromLines(lines)
        assert.are.same(24000, highestTotal)
    end)
end)