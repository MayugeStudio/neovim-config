local h = require('util.helper')

vim.g.mapleader = " "

-- nvim tree
h.nmap('<leader>e', ':NvimTreeToggle<CR>')

-- window
h.nmap('<leader>sv', '<C-w>v')
h.nmap('<leader>sh', '<C-w>s')
h.nmap('<leader>se', '<C-w>=')
h.nmap('<leader>sx', ':close<CR>')
h.nmap('<leader>h', '<C-w>h')
h.nmap('<leader>l', '<C-w>l')
h.nmap('<leader>j', '<C-w>j')
h.nmap('<leader>k', '<C-w>k')

-- tab
h.nmap('<leader>to', ':tabnew<CR>')
h.nmap('<leader>tx', ':tabclose<CR>')
h.nmap('<leader>tn', ':tabnext<CR>')
h.nmap('<leader>tp', ':tabprev<CR>')

-- move
h.nmap('<leader>n', 'ko<Esc>')
h.nmap('<leader>m', 'o<Esc>')
h.nmap('<leader><CR>', 'i<CR><Esc>')
h.nmap('H', '^')
h.nmap('L', '$')
h.vmap('H', '^')
h.vmap('L', '$')

-- visual
h.nmap('<leader>aa', 'ggVG')

