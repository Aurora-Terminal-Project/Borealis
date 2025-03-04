return {
	{
		-- "github/copilot.vim",
	},
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			{
				"L3MON4D3/LuaSnip",
				version = "v2.*",

				build = "make install_jsregexp",
			},
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"onsails/lspkind.nvim",
		},
		config = function()
			local cmp = require("cmp")

			local luasnip = require("luasnip")

			local lspkind = require("lspkind")

			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				enabled = function()
					return vim.g.cmp_enabled
				end,
				completion = {
					completeopt = "menu,menuone,preview,noselect",
				},
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-k>"] = cmp.mapping.select_prev_item(),
					["<C-j>"] = cmp.mapping.select_next_item(),
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = false }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer" },
					{ name = "path" },
				}),

				formatting = {
					format = lspkind.cmp_format({
						maxwidth = 50,
						ellipsis_char = "...",
					}),
				},
			})
		end,
	},
	{
		-- Define keymap
		vim.keymap.set("n", "<leader>tc", function()
			local cmp = require("cmp")

			if vim.g.cmp_enabled == nil then
				vim.g.cmp_enabled = false
			end
			if vim.g.copilot_enabled == nil then
				vim.g.copilot_enabled = true
			end

			if vim.g.cmp_enabled then
				-- Switch to Copilot
				cmp.setup.buffer({ enabled = false })
				vim.g.cmp_enabled = false
				vim.g.copilot_enabled = true
				vim.cmd("Copilot enable")
				print("Switched to Copilot")
			else
				-- Switch to nvim-cmp
				cmp.setup.buffer({ enabled = true })
				vim.g.cmp_enabled = true
				vim.g.copilot_enabled = false
				vim.cmd("Copilot disable") -- Corrected typo
				print("Switched to nvim-cmp")
			end
		end, { desc = "Toggle completion (Copilot/nvim-cmp)" }),

		require("cmp").setup.buffer({ enabled = false }),
	},
}
