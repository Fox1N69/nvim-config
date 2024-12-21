return {
    "saghen/blink.cmp",
    event = { "LspAttach" },
    dependencies = {
        "rafamadriz/friendly-snippets",
        ft = "lua",
    },
    version = "v0.*",

    opts = {
        -- appearance = {
        --     highlight_ns = vim.api.nvim_create_namespace("blink.cmp"),
        --     use_nvim_cmp_as_default = false,
        --     nerd_font_variant = "mono",
        -- },
        completion = {
            accept = {
                auto_brackets = {
                    enabled = true,
                },
            },
            menu = {
                border = vim.g.border_style,
                scrollbar = false,
                draw = {
                    padding = 0,
                    gap = 1,
                    treesitter = { "lsp" },
                },
                winblend = 20,
            },
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 200,
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
        },
        sources = {
            compat = {},
            default = { "lsp", "path", "snippets", "buffer", "lazydev" },
            cmdline = {},
            providers = {
                lazydev = {
                    name = "LazyDev",
                    module = "lazydev.integrations.blink",
                    score_offset = 100,
                },
            },
        },
        keymap = {
            preset = "super-tab",
            ["<C-y>"] = { "select_and_accept" },
            ["<C-j>"] = { "select_next" },
            ["<C-k>"] = { "select_prev" },
        },
    },
}
