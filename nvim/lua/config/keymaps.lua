-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs)
  local options = { noremap = true, silent = true }
  vim.keymap.set(mode, lhs, rhs, options)
end
-- Control [Y]es to accept copilot suggestion
vim.keymap.set("i", "<C-Y>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.g.copilot_no_tab_map = true

-- Return to normal mode after jj or kk
map("i", "jj", "<Esc>")
map("i", "kk", "<Esc>")

-- Select all
map("n", "<C-a>", "ggVG")

-- Save buffer
map("n", "<C-s>", ":w<CR>")

-- Undo in insert mode
map("i", "<C-z>", "<Esc>ui")

-- Move visual selection up and down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor centred when <C-d> or <C-u> is processed
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- dw to start from the beginning of the word, except at the beginning of the word
map("n", "dw", "viwod")

-- vim_tmux_navigator configs
map("n", "<C-h>", ":TmuxNavigateLeft<CR>")
map("n", "<C-j>", ":TmuxNavigateDown<CR>")
map("n", "<C-k>", ":TmuxNavigateUp<CR>")
map("n", "<C-l>", ":TmuxNavigateRight<CR>")
