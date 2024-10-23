require("napster")
local bufnr = vim.api.nvim_get_current_buf()

-- Unmap space key in insert mode
require('cmp.utils.keymap').set_map(bufnr, 'i', ' ', ' ', { noremap = true })

vim.cmd('colorscheme moonfly')
