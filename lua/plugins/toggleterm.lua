local h = require("util.helper")


return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        local Terminal = require('toggleterm.terminal').Terminal
        local lazygit = Terminal:new({
            cmd = "lazygit",
            dir = "git_dir",
            direction = "float",
            float_opts = {
                border = "double",
            },
            on_open = function(term)
                vim.cmd("startinsert!")
                vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", ":close<CR>", { noremapp = true, silent = true })
            end,
            on_close = function(term)
                vim.cmd("startinsert!")
            end,
        })

        function _lazygit_toggle()
            lazygit:toggle()
        end

        h.nmap('<leader>t', ':ToggleTerm size=40 direction=horizontal')
        h.nmap('<leader>g', ':lua _lazygit_toggle()<CR>')

        -- powershell config
        local powershell_options = {
            shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
            shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
            shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
            shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
            shellquote = "",
            shellxquote = "",
        }

        for option, value in pairs(powershell_options) do
            vim.opt[option] = value
        end

    end,
}

