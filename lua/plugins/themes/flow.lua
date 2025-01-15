return {
	"0xstepit/flow.nvim",
	lazy = false,
	name = "flow",
	priority = 1000,
	opts = {},
	config = function()
		require("flow").setup_options({})
	end,
}
