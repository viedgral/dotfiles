return {
  "navarasu/onedark.nvim",
  enables = false,
  lazy = false,
  priority = 1000,
  config = function()
    require("onedark").setup({
      style = "warmer",
    })
    require("onedark").load()
    -- vim.cmd("colorscheme onedark")
  end,
}
