-- Typical options
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Move between windows quicker
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Move between files quicker
-- https://vim.fandom.com/wiki/Vim_buffer_FAQ
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>')

-- Save files quicker
vim.keymap.set('n', '<leader>s', ':w<CR>')
vim.keymap.set('n', '<leader><leader>', ':w<CR>')
