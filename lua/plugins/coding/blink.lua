return {
    "saghen/blink.cmp",
    event = { "LspAttach", "InsertEnter" },
    dependencies = {
        "rafamadriz/friendly-snippets",
        ft = "lua",
    },
    version = "v0.*",
    opts = {
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "normal",
        },
        completion = {
            accept = {
                auto_brackets = { enabled = true },
            },
            menu = {
                border = vim.g.border_style,
                scrollbar = false,
                draw = {
                    columns = { { "kind_icon" }, { "label", "label_description", gap = 4 } },
                    padding = 0,
                    treesitter = { "lsp" },

                    components = {
                        kind_icon = {
                            ellipsis = false,
                            text = function(ctx)
                                local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
                                return kind_icon
                            end,
                        },
                    },
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
