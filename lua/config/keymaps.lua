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

-- other remaps due to switching Fn keys on Linux
vim.keymap.set('n', '<A-f>', '<C-f>')
vim.keymap.set('n', '<A-b>', '<C-b>')

vim.keymap.set('n', '<leader>j', vim.lsp.buf.hover, {})
--
-- Duplicate selected lines
vim.keymap.set("v", "<C-d>", "y'>p", { noremap = true, silent = true })
-- vim.keymap.set("v", "<leader>d", "y'>p", { noremap = true, silent = true })

vim.keymap.set('n', '<leader>td', ':tabclose<CR>', { silent = true })

-- make grep search for any line that contain the search terms, e.g. "test rpc" will yield "test_local_rpc"
-- local function custom_grep()
--   local input = vim.fn.input("Search: ")
--   local pattern = input:gsub(" ", ".*")
--   vim.cmd(string.format("Telescope grep_string search='%s'", pattern))
-- end
--
-- vim.keymap.set("n", "<leader>/", custom_grep, { noremap = true, silent = false })
