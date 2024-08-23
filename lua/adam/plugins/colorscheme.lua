return {
	"pauchiner/pastelnight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	init = function()
		vim.cmd.colorscheme 'pastelnight'
	end,
}
