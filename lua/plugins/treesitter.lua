return {
    -- Настройка nvim-treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        -- dependencies = { "p00f/nvim-ts-rainbow" },
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
            rainbow = {
                enable = true,
                extended_mode = true,
                max_file_lines = nil,
            },
        },
    },
}
