return {
    'echasnovski/mini.indentscope',
    version = '*',
    config = function()
        require('mini.indentscope').setup({
            draw = {
                delay = 50,
            },
        })
        
    end,
}
