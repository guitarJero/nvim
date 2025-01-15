-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap
keymap.set("i", "kj", "<ESC>", { desc = "Exit Insert mode" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- vim.keymap.set("i", "<C-BS>", "<Esc>cvb", {})
keymap.set("n", "<C-BS>", "ciw", { desc = "delete word" })

-- Prevent cursor from returning to start of visual mode when yanking
keymap.set("v", "y", "ygv<Esc>", {})

-- Redo with U instead of <C-r>
keymap.set("n", "U", "<C-r>", { desc = "Redo" })

-- Open a link in the cursor
keymap.set("n", "gs", ":sil !open <cWORD><CR>", { silent = true })

-- Window management
keymap.set("n", "<leader>s-", "<C-w>s", { desc = "Split window vertically" })
keymap.set("n", "<leader>s|", "<C-w>v", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sq", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>ww", "<cmd>set wrap!<CR>")

-- Tab management
keymap.set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "Create new tab" })
keymap.set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Move current buffer to a new tab" })
