-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>")

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
