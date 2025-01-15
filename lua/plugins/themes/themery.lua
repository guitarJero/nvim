return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				{ name = "Catppuccin", colorscheme = "catppuccin" },
				{ name = "Flow", colorscheme = "flow" },
				{ name = "Kanagawa", colorscheme = "kanagawa" },
				{
					name = "Nightfly",
					colorscheme = "nightfly",
					after = [[
						vim.g.nightFlyCursorColor = true
						vim.g.nightFlyTransparent = true
					]],
				},
				{ name = "Solarized Osaka", colorscheme = "solarized-osaka" },
				{ name = "Tokyo Night", colorscheme = "tokyonight" },
			},
			LivePreview = true,
		})
	end,
}
