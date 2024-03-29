vim.g.mapleader = " "

-- Remove search highlight
vim.keymap.set("n", "<leader>h", ":noh<CR>")

vim.keymap.set("i", "<C-c>", "<Esc>")

-- Copy and paste to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

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

-- Open oil nvim
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", "<leader>no", ':lua require("impulse").menu_search()<CR>', { desc = "Open parent directory" })

-- Toggle treesitter context
vim.keymap.set("n", "<leader>tc", ":TSContextToggle<CR>", { desc = "Toggle TS Context" })
