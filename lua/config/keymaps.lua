local h = require('util.helper')

vim.g.mapleader = " "

-- window
h.nmap('<leader>sv', '<C-w>v')
h.nmap('<leader>sh', '<C-w>s')
h.nmap('<leader>se', '<C-w>=')
h.nmap('<leader>sx', ':close<CR>')

-- move
h.nmap('H', '^')
h.nmap('L', '$')

-- visual
h.vmap('H', '^')
h.vmap('L', '$')

