-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("mygroup", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
    group = "lazyvim_close_with_q",
    pattern = {
        "aerial-nav",
        "ClangdAST",
    },
    callback = function(event)
        vim.bo[event.buf].buflisted = false
        vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
    end,
})

autocmd("Filetype", {
    pattern = { "*" },
    callback = function()
        -- vim.opt.formatoptions = vim.opt.formatoptions - "o"
        if vim.bo["ft"] == "css" then
            vim.opt_local.formatoptions:remove("r") -- don't enter comment leader on Enter in css files
        end
        vim.opt.formatoptions = vim.opt.formatoptions
            + {
                o = false, -- Don't continue comments with o and O
            }
    end,
    group = "mygroup",
    desc = "Don't continue comments with o and O",
})
