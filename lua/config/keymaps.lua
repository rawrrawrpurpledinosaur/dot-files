-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

-- Control [Y]es to accept copilot suggestion
vim.keymap.set("i", "<C-Y>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

-- Return to normal mode after jj or kk
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "kk", "<Esc>")

-- Select all
vim.keymap.set("n", "<C-a>", "ggVG")

-- Save buffer
vim.keymap.set("n", "<C-s>", ":w<CR>")

-- Undo in insert mode
vim.keymap.set("i", "<C-z>", "<Esc>ui")

-- Move visual selection up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor centred when <C-d> or <C-u> is processed
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
