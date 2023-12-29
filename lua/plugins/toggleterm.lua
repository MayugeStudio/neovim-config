return {
    'akinsho/toggleterm.nvim',
    config = function()
        require("toggleterm").setup {
            direction = 'horizontal',
            hide_numbers = true,
            insert_mappings = false,
            open_mapping = [[<leader>t]],
            persist_size = true,
            shade_filetypes = {},
            shade_terminals = true,
            size = vim.o.columns * 0.5,
            start_in_insert = false,
            highlights = {
                Normal = {
                    link = 'DarkNormal'
                }
            },
            winbar = {
                enabled = true,
            },
        }
    end,
}
