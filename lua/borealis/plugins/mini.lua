return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		-- Text Editor modules
		require("mini.ai").setup()
		require("mini.align").setup()
		require("mini.comment").setup()
		require("mini.completion").setup()
		require("mini.move").setup()
		require("mini.pairs").setup()
		require("mini.splitjoin").setup()
		require("mini.surround").setup()

		-- General Workflow modules
		require("mini.basics").setup()
		require("mini.bracketed").setup()
		require("mini.jump").setup()

		-- Appearance modules
		require("mini.cursorword").setup()
		require("mini.icons").setup()
	end,
}
