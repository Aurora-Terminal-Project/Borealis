return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"arduino_language_server",
				"astro",
				"bashls",
				"csharp_ls",
				"omnisharp_mono",
				"ast_grep",
				"clangd",
				"cmake",
				"cssls",
				"tailwindcss",
				"docker_compose_language_service",
				"emmet_ls",
				"html",
				"jdtls",
				"biome",
				"lua_ls",
				"harper_ls",
				"glsl_analyzer",
				"pyright",
				"rubocop",
				"ruby_lsp",
				"rust_analyzer",
				"ts_ls",
				"tinymist",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"ast-grep",
				"rubocop",
				"pylint",
				"eslint_d",
			},
		})
	end,
}
