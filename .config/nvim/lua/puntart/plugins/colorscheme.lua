return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("tokyonight").setup({
      -- transparent = true, -- Enable this to disable setting the background color
    })
    vim.cmd("colorscheme tokyonight")
  end
}
