local h = require("util.helper")

return {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
        -- Autocomplete
        function _G.check_back_space()
            local col = vim.fn.col('.') - 1
            return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
        end
        -- Use Tab for trigger completion with characters ahead and navigate
        local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
        local keyset = vim.keymap.set
        h.imap("<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
        h.imap("<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

        -- Make <CR> to accept selected completion item or notify coc.nvim to format
        h.imap("<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"]], opts)
        -- Use <C-SPACE> to trigger completion
        h.imap("<C-SPACE>", "coc#refresh()", { silent = true, expr = true })
        
        -- Use `[g` and `]g` to navigate diagnostics
        h.nmap("[g", "<Plug>(coc-diagnostic-prev)")
        h.nmap("]g", "<Plug>(coc-diagnostic-next)")
        
        -- goto code navigation
        h.nmap("gd", "<Plug>(coc-definition)")
        h.nmap("gy", "<Plug>(coc-type-definition)")
        h.nmap("gi", "<Plug>(coc-implementation)")
        h.nmap("gr", "<Plug>(coc-references)")

        -- Use K to show documentation in preview window
        function _G.show_docs()
            local cw = vim.fn.expand('<cword>')
            if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
                vim.api.nvim_command('h ' .. cw)
            elseif vim.api.nvim_eval('coc#rpc#ready()') then
                vim.fn.CocActionAsync('doHover')
            else
                vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
            end
        end
        h.nmap("K", ":lua _G.show_docs()<CR>")
        local opts = { silent = true, nowait = true }
        h.nmap("<leader>j", ":<C-u>CocNext<CR>", opts)
        h.nmap("<leader>k", ":<C-u>CocPrev<CR>", opts)
        
    end
}
