local h = require("util.helper")

return {
    "lewis6991/gitsigns.nvim",
    config = function()
        local gs = require("gitsigns")
        h.nmap('<leader>hs', gs.stage_hunk)
        h.nmap('<leader>hr', gs.reset_hunk)
        h.vmap('<leader>hs', function() gs.stage_hunk { vim.fn.line('.'), vim.fn.line('v') } end)
        h.vmap('<leader>hr', function() gs.reset_hunk { vim.fn.line('.'), vim.fn.line('v') } end)
    end,
}
