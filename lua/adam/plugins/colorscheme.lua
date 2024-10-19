return {
	"rose-pine/neovim",
    name = "rose-pine",
	lazy = false,
	priority = 1000,
	opts = {},
	init = function()
		vim.cmd.colorscheme 'rose-pine'
	end,
}

-- return {
-- 	"pauchiner/pastelnight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	init = function()
-- 		vim.cmd.colorscheme 'pastelnight'
-- 	end,
-- }
