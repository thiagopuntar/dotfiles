return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      { "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" },  -- for curl, log wrapper
    },
    build = "make tiktoken",        -- Only on MacOS or Linux
    opts = {
      debug = true,                 -- Enable debugging
      auto_follow_cursor = false,
      mappings = {
        reset = {
          normal = "<C-x>",
          insert = "<C-x>",
        },
        close = {
          insert = '<Nop>'
        }
      },
      prompts = {
        Fix = {

        },
        Optimize = {},
        Tests = {},
      }
    },
  },
}
