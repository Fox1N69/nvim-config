return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("neotest").setup({
                adapters = {
                    require("neotest-go")({
                        dap = { enabled = true, port = 38697 },
                    }),
                },
            })
        end,
    },
    {
        "nvim-neotest/neotest-go",
        ft = "go",
    },
}
