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
            nerd_font_variant = "mono",
            kind_icons = {
                Text = "",
                Method = "",
                Function = "󰊕",
                Constructor = "󰒓",
                Field = "󰕕",
                Variable = "󰆦",
                Property = "󰖷",
                Class = "",
                Interface = "",
                Struct = "󱡠",
                Module = "",
                Unit = "󰪚",
                Value = "󰫧",
                Enum = "",
                EnumMember = "",
                Keyword = "",
                Constant = "󰏿",
                Snippet = "󰧭",
                Color = "󰏘",
                File = "󰈔",
                Reference = "󰬲",
                Folder = "󰉋",
                Event = "󱐋",
                Operator = "󰪚",
                TypeParameter = "󰬛",
                Supermaven = "",
                Codeium = "",
                Package = "",
            },
        },
        completion = {
            accept = {
                auto_brackets = { enabled = true },
            },
            menu = {
                border = "rounded",
                scrollbar = false,
                draw = {
                    columns = {
                        { "kind_icon" },
                        { "label", "label_description", gap = 4 },
                    },
                    padding = 0,
                    treesitter = { "lsp" },

                    components = {
                        -- kind_icon = {
                        --     ellipsis = false,
                        --     text = function(ctx)
                        --         local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
                        --         return kind_icon
                        --     end,
                        -- },
                    },
                },
                winblend = 20,
            },
            documentation = {
                auto_show = true,
                auto_show_delay_ms = 200,
                window = {
                    border = "rounded",
                },
            },
            ghost_text = {
                enabled = true,
            },
        },
        signature = {
            enabled = true,
        },
        sources = {
            compat = { "supermaven" },
            default = { "lsp", "path", "snippets", "buffer", "lazydev" },
            providers = {
                supermaven = {
                    kind = "Supermaven",
                    score_offset = 100,
                    async = true,
                },
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
