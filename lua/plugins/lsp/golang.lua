return {
    "olexsmir/gopher.nvim",
    ft = "go",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    build = function()
        vim.cmd("GoInstallDeps")
    end,
    opts = {}, -- здесь можно задать свою конфигурацию
}
