local M = {}

function M.get()
    ---@type neomodern.Config
    local opts = require("neomodern").opts
    ---@type neomodern.Palette
    local palette = require("neomodern.palette").get(
        opts.theme,
        opts.background,
        opts.overrides.default
    )
    local c = {
        norm = palette.base16.blue,
        ins = palette.base16.yellow,
        vis = palette.base16.magenta,
        rep = palette.base16.cyan,
        comm = palette.base16.red,
        fg_dim = palette.spec.comment,
        vcs = palette.spec.alt,
        bg_b = palette.spec.visual,
        bg_c = palette.spec.line,
        dark = palette.spec.bg,
        none = "none",
    }

    local hl = {}

    hl.normal = {
        a = {
            bg = c.norm,
            fg = c.dark,
            gui = "bold",
        },
        b = { bg = c.bg_b, fg = c.vcs },
        c = { bg = c.bg_c, fg = c.fg_dim },
    }

    hl.insert = {
        a = {
            bg = c.ins,
            fg = c.dark,
            gui = "bold",
        },
    }

    hl.visual = {
        a = {
            bg = c.vis,
            fg = c.dark,
            gui = "bold",
        },
    }

    hl.replace = {
        a = {
            bg = c.rep,
            fg = c.dark,
            gui = "bold",
        },
    }

    hl.command = {
        a = {
            bg = c.comm,
            fg = c.dark,
            gui = "bold",
        },
    }

    return hl
end

return M
