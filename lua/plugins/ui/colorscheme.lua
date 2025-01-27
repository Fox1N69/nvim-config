return {
    {
        "catppuccin/nvim",
        lazy = true,
        priority = 1000,
        name = "catppuccin",
        opts = {
            transparent_background = true,
            compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
            styles = {
                comments = { "italic" },
                functions = {},
                keywords = {},
                operators = {},
                conditionals = {},
                loops = {},
                booleans = {},
                numbers = {},
                types = {},
                strings = {},
                variables = {},
                properties = {},
            },
            compile = true,
            flavour = "mocha",
            integrations = {
                snacks = true,
                cmp = true,
                treesitter = true,
                mason = true,
                neotree = true,
                dap = true,
                dap_ui = true,
                dropbar = {
                    enabled = true,
                    color_mode = true,
                },
                flash = true,
                markdown = true,
                blink_cmp = true,
                notify = true,
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                    },
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        information = { "underline" },
                        warnings = { "underline" },
                    },
                },
                mini = {
                    enabled = true,
                },
            },
            color_overrides = {
                mocha = {
                    -- Основные цвета
                    rosewater = "#F5E0DC",
                    flamingo = "#F2CDCD",
                    pink = "#F5C2E7",
                    mauve = "#CBA6F7",
                    red = "#F38BA8",
                    maroon = "#EBA0AC",
                    peach = "#F8BD96",
                    yellow = "#FAE3B0",
                    green = "#ABE9B3",
                    teal = "#B5E8E0",
                    sky = "#89DCEB",
                    sapphire = "#74C7EC",
                    blue = "#92b3f1",
                    lavender = "#c7d1ff",

                    -- Фоновые цвета
                    text = "#D9E0EE",
                    subtext1 = "#bfc6d4",
                    subtext0 = "#A6ADC8",
                    overlay2 = "#9399B2",
                    overlay1 = "#7F849C",
                    overlay0 = "#6E6C7E",
                    surface2 = "#585B70",
                    surface1 = "#474656",
                    surface0 = "#383747",

                    -- Основные цвета фона
                    base = "#1E1D2D",
                    mantle = "#191828",
                    crust = "#11111B",
                },
            },
            highlight_overrides = {
                mocha = function(colors)
                    return {
                        Type = { fg = colors.yellow, sp = "none" },
                        Typedef = { fg = colors.yellow },

                        ["@attribute"] = { fg = colors.yellow },
                        ["@attribute.builtin"] = { fg = colors.yellow },

                        ["@storageclass.lifetime"] = { fg = colors.yellow },

                        ["@lsp.type.class"] = { fg = colors.yellow },
                        ["@lsp.type.decorator"] = { fg = colors.yellow },
                        ["@lsp.type.enum"] = { fg = colors.yellow },
                        ["@lsp.type.interface"] = { fg = colors.yellow },
                        ["@lsp.type.macro"] = { fg = colors.blue },
                        ["@lsp.type.variable"] = { fg = colors.text },
                    }
                end,
            },
        },
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin-mocha",
        },
    },
}
