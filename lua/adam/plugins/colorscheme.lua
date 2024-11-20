return {
    'AlexvZyl/nordic.nvim',
    name = "nordic",
    lazy = false,
    priority = 1000,
    opts = {},
    init = function()
        vim.cmd.colorscheme 'nordic'
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
