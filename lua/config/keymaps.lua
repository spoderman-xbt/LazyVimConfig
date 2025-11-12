-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Add back normal Vim keymaps
vim.keymap.del("n", "H")
vim.keymap.del("n", "L")

-- try remap comment to Jetbrains one
-- vim.keymap.set("n", "<C-_>", "gccj", { remap = true })
-- vim.keymap.set("n", "<C-_>", "gc", { remap = true })
