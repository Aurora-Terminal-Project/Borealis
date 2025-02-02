return {
	"kdheepak/lazygit.nvim",
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	keys = {
		{ "<leader>lg", "<cmd>LazyGit<CR>", desc = "Open lazy git" },
	},
}
