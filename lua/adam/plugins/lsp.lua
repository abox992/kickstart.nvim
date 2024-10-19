return {

	'neovim/nvim-lspconfig',
	dependencies = {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
	},
	config = function()
		require('mason').setup()
		require('mason-lspconfig').setup {
			ensure_installed = {
				'lua_ls',
				'clangd',
				'ts_ls',
                'eslint',
            },
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup {}
                end,
            },
        }

        require('lspconfig').lua_ls.setup {
            -- ... other configs
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' },
                    },
                },
            },
        }

        require('lspconfig').clangd.setup {
            cmd = {
                'clangd',
                '--fallback-style=WebKit',
            },
        }
    end,
}
