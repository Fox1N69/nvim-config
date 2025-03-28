return {
    -- init cmp_luasnip
    {
        "saadparwaiz1/cmp_luasnip",
    },

    -- init telescope plugin
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            {
                "<leader>fp",
                function()
                    require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
                end,
                desc = "Find Plugin File",
            },
        },
        opts = {
            defaults = {
                layout_strategy = "horizontal",
                layout_config = { prompt_position = "top" },
                sorting_strategy = "ascending",
                winblend = 0,
            },
        },
    },

    { "echasnovski/mini.nvim", version = "*" },

    { "nvzone/volt", lazy = true },

    {
        "nvzone/minty",
        cmd = { "Shades", "Huefy" },
    },

    { import = "lazyvim.plugins.extras.lang.json" },
}
