local nmap = require("util.helper").nmap

return {
    {
        'nvim-telescope/telescope.nvim',
        tag='0.1.5',
        dependencies = 'nvim-lua/plenary.nvim',
    },
    {
        'nvim-telescope/telescope-file-browser.nvim',
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        config = function()
            require('telescope').setup({
                extensions = {
                    fzf = {
                        fuzzy = true,
                    },
                },
                file_browser - {
                    theme = "ivy",
                    hijack_netrw = true,
                    mappings = {
                        ["i"] = {

                        },
                        ["n"] = {

                        }
                    }
                }
            })
            require('telescope').load_extension('fzf')
            local builtin = require("telescope.builtin")
            nmap("<leader>ff", builtin.find_files)
            nmap("<leader>fg", builtin.live_grep)
            nmap("<leader>fB", ":Telescope file_browser")
            nmap("<leader>gs", builtin.git_status)
        end
    }
}
