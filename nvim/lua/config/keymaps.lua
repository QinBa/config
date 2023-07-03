-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Quick esc
vim.keymap.set({ "i", "v" }, "jk", "<ESC>", { silent = true })
-- move cursor in insert mode
vim.keymap.set("i", "<C-f>", "<Right>", {})
vim.keymap.set("i", "<C-b>", "<Left>", {})
