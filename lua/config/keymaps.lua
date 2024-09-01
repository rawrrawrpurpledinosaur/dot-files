-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

-- Overrdide tab keymap and use it for copilot completion
vim.api.nvim_set_keymap('i', '<Tab>', 'copilot#Accept("<C-J>")', { expr = true})

-- Return to normal mode after jj or kk or jk
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', opts)
vim.api.nvim_set_keymap('i', 'kk', '<Esc>', opts)
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', opts)

-- Select all
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', opts)

-- Save buffer 
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', opts)

-- Undo 
vim.api.nvim_set_keymap('i', '<C-z>', '<Esc>ui', opts)
