local opt = vim.opt

-- disable Ntree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- encoding
vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.guicursor = ""

-- scroll
opt.scroll = 5

-- indent
opt.autoindent = true
opt.breakindent = true

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
opt.relativenumber = true
opt.cursorline = true

-- view
opt.ambiwidth = 'double'
opt.wrap = false
opt.showmatch = true
opt.helplang = 'ja', 'en'
opt.clipboard = 'unnamedplus'
opt.visualbell = true

-- floating window
opt.winblend = 20

-- updatetime
opt.updatetime = 300

-- signcolumn
opt.signcolumn = 'yes'

-- golang
vim.api.nvim_exec([[
  autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
]], false)

