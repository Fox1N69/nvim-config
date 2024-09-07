return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        source_selector = {
            winbar = true,
            statusline = false,
        },
        window = {
            position = "left",
            width = 30,
        },
        filesystem = {
            filtered_items = {
                visible = true, -- Показывать скрытые файлы
                hide_dotfiles = false, -- Не скрывать файлы с точкой в начале
                hide_gitignored = true, -- Скрывать игнорируемые Git файлы
            },
        },
    },
}
