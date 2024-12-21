return {
    "saghen/blink.cmp",
    event = { "LspAttach" },
    dependencies = {
        "rafamadriz/friendly-snippets",
        ft = "lua",
    },
    version = "v0.*",

    opts = {
        appearance = {
            highlight_ns = vim.api.nvim_create_namespace("blink.cmp"),
            use_nvim_cmp_as_default = false,
            nerd_font_variant = "mono",
        },
        completion = {
            accept = {
                auto_brackets = {
                    enabled = true,
                },
            },
            menu = {
                border = vim.g.border_style,
                winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:CursorLine,Search:None",
                scrollbar = false,
                draw = {
                    padding = 0,
                    gap = 1,
                    treesitter = { "lsp" },
                },
            },
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 100,
                window = {
                    border = vim.g.border_style,
                },
            },
            ghost_text = {
                enabled = vim.g.ai_cmp,
            },
        },
        signature = {
            enabled = true,
            border = vim.g.border_style,
        },
        sources = {
            compat = {},
            default = { "lsp", "path", "snippets", "buffer" },
            cmdline = {},
        },
        keymap = {
            preset = "super-tab",
            ["<C-y>"] = { "select_and_accept" },
            ["<C-j>"] = { "select_next" },
            ["<C-k>"] = { "select_prev" },
        },
    },
}
