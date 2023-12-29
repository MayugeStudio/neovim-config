local opt = vim.opt

-- disable Ntree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- encoding
vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

-- scroll
opt.scroll = 5

opt.title = true

-- indent
opt.autoindent = true
opt.breakindent = true

-- 不可視文字可視化
opt.list = true
opt.listchars = { tab = '>>', trail = '-', nbsp = '+' }

-- タブ, インデント
opt.tabstop = 4
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true

-- search
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- 補完
opt.completeopt = 'menuone,noinsert'

-- row
opt.number = true
opt.signcolumn = 'yes'
opt.relativenumber = true
opt.cursorline = true

-- view
opt.ambiwidth = 'double'
opt.wrap = true 
opt.showtabline = 2
opt.showmatch = true
opt.helplang = 'ja', 'en'
opt.updatetime = 200
opt.clipboard = 'unnamedplus'
opt.visualbell = true
opt.signcolumn = 'yes'
opt.hidden = true
opt.swapfile = false
opt.wrap = false

-- terminal
opt.termguicolors = true

-- golang
vim.api.nvim_exec([[
  autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
]], false)

