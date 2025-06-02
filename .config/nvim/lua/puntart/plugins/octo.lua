return {
  "pwntester/octo.nvim",
  requires = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim" },
  },
  config = function()
    require "octo".setup({
      ssh_aliases = { ["sf"] = "github.com" }
    })
  end,
}
