return {
    'nvimtools/none-ls.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvimtools/none-ls-extras.nvim'
    },
    config = function()
        local null_ls = require 'null-ls'

        null_ls.setup {
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.completion.spell,
                null_ls.builtins.formatting.prettierd,

                -- null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.eslint_d,
                -- require("none-ls.diagnostics.eslint")
            },
        }

        vim.keymap.set('n', '<leader>f', function()
            vim.lsp.buf.format { tabSize = 4 }
        end, { desc = '[F]ormat' })
    end,
}
