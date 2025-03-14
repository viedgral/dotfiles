-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<esc>")
-- vim.api.nvim_set_keymap("n", "<leader>uW", ":ASToggle<CR>", {})

local Snacks = require("snacks")

Snacks.toggle({
  name = "Autosave",
  get = function()
    return require("auto-save").state()
  end,
  set = function(state)
    if state then
      require("auto-save").toggle()
    else
      require("auto-save").toggle()
    end
  end,
}):map("<leader>uW")
