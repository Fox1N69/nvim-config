return {
    defaults = {
        lazy = true,
    },
    spec = {
        { "LazyVim/LazyVim", import = "lazyvim.plugins" },
        { import = "plugins" },
        { import = "plugins/render" },
        { import = "plugins/ui" },
        { import = "plugins/coding" },
        { import = "plugins/lsp" },
    },
    ui = {
        border = "rounded",
        title = "lazy.nvim",
        size = { width = 0.9, height = 0.9 },
    },
    concurrency = 4,
    install = {
        colorscheme = { "catppuccin" },
    },
    checker = { enabled = true },
    performance = {
        cache = {
            enabled = true,
        },
        reset_packpath = true,
        rtp = {
            -- disable some rtp plugins
            disabled_plugins = {
                "gzip",
                -- "matchit",
                -- "matchparen",
                -- "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
}
