local h = require('util.helper')

vim.g.mapleader = " "

-- window
h.nmap('<leader>sv', '<C-w>v')
h.nmap('<leader>sh', '<C-w>s')
h.nmap('<leader>se', '<C-w>=')
h.nmap('<leader>sx', ':close<CR>')
h.nmap('<leader>h', '<C-w>h')
h.nmap('<leader>l', '<C-w>l')
h.nmap('<leader>j', '<C-w>j')
h.nmap('<leader>k', '<C-w>k')

-- move
h.nmap('<leader>n', 'ko<Esc>')
h.nmap('<leader>m', 'o<Esc>')
h.nmap('<leader><CR>', 'i<CR><Esc>')
h.nmap('H', '^')
h.nmap('L', '$')

-- visual
h.vmap('H', '^')
h.vmap('L', '$')

