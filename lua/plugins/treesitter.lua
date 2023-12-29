return {
    'nvim-treesitter/nvim-treesitter',
    event = "BufRead",
    config = function()
        require('nvim-treesitter.configs').setup({
            autotag = { enable = true },
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = { 
                "c",
                "cpp",
                "rust",
                "go",
                "gomod",
                "python",
                "javascript",
                "typescript",
                "html",
                "css",
                "lua",
                "vim",
                "vimdoc",
                "make",
            },
        })
    end,
}

