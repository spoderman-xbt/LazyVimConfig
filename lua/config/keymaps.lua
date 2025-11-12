-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Add back normal Vim keymaps
vim.keymap.del("n", "H")
vim.keymap.del("n", "L")

-- cycle buffers like in Jetbrains (Almost, Can't use Ctrl+Tab on Linux with current system remappings. Its the first one so come back to that one)
-- vim.keymap.set("n", "<  ", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })

-- remap commenting
-- vim.keymap.set("n", "<leader>_", "gccj", { remap = true })
-- vim.keymap.set("n", "<leader>_", "gc", { remap = true })

-- remap Ctrl+v for vertical block mode to Alt+v (which are swapped with my linux system settings so it makes it like it was before)
vim.keymap.set('n', '<A-v>', '<C-v>', { desc = 'Remap Alt+v to Ctrl+v' })
