return {
    -- Настройка nvim-treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "bash",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "regex",
                "tsx",
                "typescript",
                "vim",
                "yaml",
                "go",
                "gomod",
                "gosum",
                "gowork",
            },
            sync_install = false, -- Параметр для синхронной установки
            ignore_install = {}, -- Массив языков, которые не нужно устанавливать
            auto_install = true, -- Автоустановка языковых парсеров для файлов
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        },
    },

    -- Подключение nvim-ts-rainbow2
}
