-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
-- Create autogroup for autosave
local autosave_group = vim.api.nvim_create_augroup("AutoSave", { clear = true })

-- Autosave on InsertLeave and TextChanged
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  group = autosave_group,
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    -- Only save if buffer has a filename and is modifiable
    if vim.api.nvim_buf_get_name(buf) ~= "" and vim.bo[buf].modifiable then
      vim.cmd("silent! write")
    end
  end,
})
