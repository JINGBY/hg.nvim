local Util = require("neomodern.util")

local M = {}
local fg_bias = "#BBBAC1"

---@type neomodern.PrePalette.Base
M.base = {
    black = "#171719",
    red = "#D88F82",
    green = "#7F9EF1",
    yellow = "#BB99F9",
    blue = "#DA93C1",
    magenta = "#65A0A6",
    cyan = "#6B6B99",
}

---@type neomodern.PrePalette.Spec
M.spec = {
    alt = "#ABBCEB",
    bg = M.base.black,
    comment = "#555568",
    constant = "#7F9EF1",
    fg = "#BBBAC1",
    func = "#DA93C1",
    keyword = "#BB99F9",
    line = "#1D1D22",
    number = "#D88F82",
    operator = "#9b99a3",
    property = "#65A0A6",
    string = "#6B6B99",
    type = "#A8A6DE",
    visual = "#2A2A31",
}

return M
