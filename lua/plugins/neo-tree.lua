return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    enabled = true,
    opts = {
        source_selector = {
            winbar = false,
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
        default_component_configs = {
            icon = {
                folder_closed = "",
                folder_open = "",
                folder_empty = "",
                git_status = {
                    symbols = {
                        added = "",
                        modified = "",
                        deleted = "",
                        renamed = "",
                        untracked = "",
                        ignored = "",
                        unstaged = "",
                    },
                },
            },
        },
    },
}
