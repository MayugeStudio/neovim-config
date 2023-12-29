local opt = vim.opt

-- disable Ntree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- gui
opt.showmode = false
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.title = true
opt.foldenable = false
opt.linebreak = true
opt.pumblend = 10
opt.pumheight = 15
opt.wrap = true
opt.signcolumn = 'yes'
opt.list = true
opt.listchars = { trail = '.', tab = '»-»' }
opt.smoothscroll = true

-- encoding
vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

-- tabs
opt.tabstop = 4
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- indent
opt.autoindent = true
opt.breakindent = true
opt.smartindent = true

-- search
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- view
opt.ambiwidth = 'double'
opt.clipboard = 'unnamedplus'
opt.visualbell = true

-- floating window
opt.winblend = 20

-- updatetime
opt.updatetime = 300

