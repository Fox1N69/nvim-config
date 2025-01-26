return {
    {
        "catppuccin/nvim",
        lazy = true,
        optional = true,
        priority = 1000,
        name = "catppuccin",
        init = function()
            vim.cmd.colorscheme("catppuccin")
        end,
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
                booleans = { "italic" },
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
        },
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin-mocha",
        },
    },
}
