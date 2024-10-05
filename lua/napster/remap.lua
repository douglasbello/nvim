vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<leader>b', '<C-o>', { noremap = true, silent = true })

vim.keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.api.nvim_buf_set_keymap(0, 'i', ' ', ' ', { silent = true })

vim.api.nvim_set_keymap('n', 'e', 'w', {noremap = true})
vim.api.nvim_set_keymap('n', 'w', 'e', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-g>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<Leader><Right>', '<C-w>>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader><Left>', '<C-w><', { noremap = true, silent = true })
