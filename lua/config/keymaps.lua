-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<Space><Tab>g", ":lua create_group()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>cta", ":GoTagAdd<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>ctd", ":GoTagClear<CR>", opts)
