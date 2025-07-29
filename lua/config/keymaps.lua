-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- Mover línea hacia abajo con Alt + j en modo normal
keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
-- Mover línea hacia arriba con Alt + k en modo normal
keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Mover línea hacia abajo con Alt + j en modo visual
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
-- Mover línea hacia arriba con Alt + k en modo visual
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Clean :%s/^M//g
keymap.set("n", "<leader>cM", ":s/^M//g<CR>", { noremap = true, silent = true, desc = "Delete blank spaces(^M)" })

keymap.set("n", "<leader>[", "<S-$>%", { noremap = true, desc = "Move to end {([])}" }) -- Te lleva al final o el principio de llave relacionada {}[]()

-- Find with hidden files
keymap.set("n", "<leader><leader>", function()
  require("telescope.builtin").find_files({ hidden = true })
end, { desc = "Buscar archivos (incluye ocultos)" })

-- Git Messenger
keymap.set("n", "<leader>gm", ":GitMessenger<cr>", { noremap = true })

-- Vim Be Good
keymap.set("n", "<leader>vg", ":VimBeGood<cr>")
keymap.set("n", "<leader>du", ":DBUI<cr>")
keymap.set("n", "<leader>dt", ":DBUIToggle<cr>")
keymap.set("n", "<leader>da", ":DBUIAddConnection<cr>")
keymap.set("n", "<leader>df", ":DBUIFindBuffer<cr>")

-- Refactor
keymap.set("x", "<leader>r", "Refactor")
keymap.set("n", "<leader>r", "Refactor")
keymap.set("x", "<leader>re", ":Refactor extract ")
keymap.set("x", "<leader>rf", ":Refactor extract_to_file ")
keymap.set("x", "<leader>rv", ":Refactor extract_var ")
keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var")
keymap.set("n", "<leader>rI", ":Refactor inline_func")
keymap.set("n", "<leader>rb", ":Refactor extract_block")
keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file")

-- ToggleTerm
keymap.set("n", "<leader>T", "ToggleTerm", { noremap = true, desc = "ToggleTerm" })
keymap.set("n", "<leader>Tt", ":ToggleTerm<cr>", { noremap = true, desc = "Toggle Terminal (default)" })
keymap.set("n", "<leader>Tr", ":ToggleTerm direction=tab<cr>", { noremap = true, desc = "Toggle Terminal (tab)" })
keymap.set("n", "<leader>Tf", ":ToggleTerm direction=float<cr>", { noremap = true, desc = "Toggle Terminal (float)" })
keymap.set(
  "n",
  "<leader>Th",
  ":ToggleTerm direction=horizontal<cr>",
  { noremap = true, desc = "Toggle Terminal (horizontal)" }
)
keymap.set(
  "n",
  "<leader>Tv",
  ":ToggleTerm direction=vertical<cr>",
  { noremap = true, desc = "Toggle Terminal (vertical)" }
)
