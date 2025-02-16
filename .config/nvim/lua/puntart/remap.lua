vim.g.mapleader = " "

-- Remove search highlight
vim.keymap.set("n", "<leader>h", ":noh<CR>")

vim.keymap.set("i", "<C-c>", "<Esc>")

-- Copy and paste to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')

-- move block as Vs code alt arrow down / arrow up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Let cursor in the beginning of the statement after a J in normal mode
vim.keymap.set("n", "J", "mzJ`z")

-- Centralize view after navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.keymap.set("n", "<C-i>", "<C-i>zz")

-- Open oil nvim
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })


-- Toggle treesitter context
vim.keymap.set("n", "<leader>tc", ":TSContextToggle<CR>", { desc = "Toggle TS Context" })

-- Copilot chat
vim.keymap.set("n", "<leader>cco", ":CopilotChatToggle<CR>", { desc = "Open copilot chat" })
vim.keymap.set("n", "<leader>cct", ":CopilotChatTests<CR>", { desc = "Generate tests" })
vim.keymap.set("n", "<leader>ccf", ":CopilotChatFix<CR>", { desc = "Fix" })
vim.keymap.set("n", "<leader>ccz", ":CopilotChatOptimize<CR>", { desc = "Optimize code" })
vim.keymap.set("n", "<leader>ccc", ":CopilotChatCommit<CR>", { desc = "Commit code" })
vim.keymap.set({ "n", "v" }, "<leader>cce", ":CopilotChatExplain<CR>", { desc = "Explain this code" })

-- Quickfix list mappings
---- Filters the Quickfix list based on a regex and a specific field
local function filter_quickfix_by(regex, field)
  local qflist = vim.fn.getqflist()
  local filtered = vim.tbl_filter(function(entry)
    return string.match(entry[field] or "", regex)
  end, qflist)
  vim.fn.setqflist(filtered)
end

-- Prompts user input and filters by buffer
local function filter_buffer()
  vim.fn.inputsave()
  local regex = vim.fn.input("Filter buffer by regex: ")
  vim.fn.inputrestore()
  if regex ~= "" then
    filter_quickfix_by(regex, "bufnr")
  end
end


local function filter_text()
  vim.fn.inputsave()
  local regex = vim.fn.input("Filter by text (regex): ")
  vim.fn.inputrestore()
  if regex ~= "" then
    filter_quickfix_by(regex, "text")
  end
end

-- Key mappings for Quickfix operations
vim.keymap.set('n', '<leader>qb', filter_buffer, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>qt', filter_text, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>qo', ':copen<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>qc', ':cclose<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>qn', ':cnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>qp', ':cprevious<CR>', { noremap = true, silent = true })
