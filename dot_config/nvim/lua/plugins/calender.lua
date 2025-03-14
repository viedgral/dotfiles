return {
  { "nvim-telekasten/calendar-vim" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = {
        --        disable = { "markdown", "calendar" },
        disable = { "calendar" },
      },
    }, --   ensure_installed = {},
  },
}
