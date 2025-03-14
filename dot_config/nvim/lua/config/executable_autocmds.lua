-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-----------------------------------------------------------
-- Autocommand functions
-----------------------------------------------------------

-- Define autocommands with Lua APIs
-- See: :h api-autocmd, :h augroup
-- https://neovim.io/doc/user/autocmd.html

local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Example of using vimscript in lua for specifying an autocommand
-- vim.cmd([[
-- autocmd BufNewFile,BufEnter *.md set shiftwidth=4
--     ]])

-- https://www.youtube.com/watch?v=qN6BuJpsFbQ

-- Insert link in telekasten files
-- autocmd({ "BufEnter" }, {
--   pattern = { "*.md" },
--   callback = function()
--     -- print("Enabling linking for Telekasten")
--     vim.schedule(function()
--       vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>") --, {buffer = true})
--     end)
--   end,
-- })
--
-- autocmd({ "BufLeave" }, {
--   pattern = { "*.md" },
--   callback = function()
--     -- print("Enabling linking for Telekasten")
--     vim.schedule(function()
--       vim.keymap.del("i", "[[", "<cmd>Telekasten insert_link<CR>") --, {buffer = true})
--     end)
--   end,
-- })
vim.api.nvim_create_autocmd("Filetype", {
  pattern = "norg",
  callback = function()
    vim.keymap.set("n", "<LocalLeader>nn", "<Plug>(neorg.dirman.new-note)", { buffer = true })

    vim.keymap.set("i", "<C-t>", "<Plug>(neorg.dirman.promote)", { buffer = true })
    vim.keymap.set("i", "<C-d>", "<Plug>(neorg.promo.demote)", { buffer = true })
    vim.keymap.set("v", "<", "<Plug>(neorg.promo.demote.range)", { buffer = true })
    vim.keymap.set("v", ">", "<Plug>(neorg.promo.promote.range)", { buffer = true })
  end,
})

-- need autocmd to enable vimtex mappings only for latex files
-- vim.api.nvim_create_autocmd("Filetype", {
--   pattern = "tex",
--   callback = function()
--     vim.g.vimtex_mappings_prefix = "<localleader>t"
--   end,
-- })
