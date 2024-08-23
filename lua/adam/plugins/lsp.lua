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
				'tsserver',
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
	end,
}
