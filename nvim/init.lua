-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Unmap the Tab key in insert mode if it's mapped by luasnip
vim.api.nvim_del_keymap("i", "<Tab>")

-- Define the handle_tab function to handle what happens when Tab is pressed
function _G.handle_tab()
  if vim.fn.pumvisible() == 1 then
    return "<C-n>"
  else
    return "<Tab>"
  end
end
