return {
  {
    "zbirenbaum/copilot.lua",
    config = function()
      require("copilot").setup({
        panel = {
          enable = false,
        },
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<Tab>",
          }
        }
      })
    end
  }
}
