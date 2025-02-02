return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" },
			{ "nvim-lua/plenary.nvim", branch = "master" },
			{ "nvim-telescop/telescope.nvim" },
		},
		build = "make tiktoken",
		opts = {
			debug = true,
			show_help = true,
			window = {
				layout = "float",
			},
			auto_follow_cursor = false,
		},
		config = function(_, opts)
			local chat = require("CopilotChat")
			local select = require("CopilotChat.select")

			opts.prompts = opts.prompts or {}
			opts.selection = select.unnamed

			opts.prompts.Commit = {
				prompt = "Write commit message for the change with commitizen convention",
				selection = select.gitdiff,
			}
			opts.prompts.CommitStaged = {
				prompt = "Write commit message for the change with commitizen convention",
				selection = function()
					return select.gitdiff(source, true)
				end,
			}

			chat.setup(opts)

			vim.api.nvim_create_user_command("CopilotChatVisual", function(args)
				chat.ask(args.args, { selection = select.visual })
			end, { nargs = "*", range = true })

			vim.api.nvim_create_user_command("CopilotChatInline", function(args)
				chat.ask(args.args, {
					selection = select.visual,
					window = {
						layout = "float",
						relative = "cursor",
						width = 1,
						height = 0.4,
						row = 1,
					},
				})
			end, { nargs = "*", range = true })

			vim.api.nvim_create_user_command("CopilotChatBuffer", function(args)
				chat.ask(args.args, { selection = select.buffer })
			end, { nargs = "*", range = true })
		end,
		event = "VeryLazy",
		keys = {
			-- Show help actions with telescope
			{
				"<leader>cch",
				function()
					local actions = require("CopilotChat.actions")
					require("CopilotChat.integrations.telescope").pick(actions.help_actions())
				end,
				desc = "CopilotChat - Help actions",
			},

			-- Show prompts actions with telescope
			{
				"<leader>ccp",
				function()
					local actions = require("CopilotChat.actions")
					require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
				end,
				desc = "CopilotChat - Prompt actions",
			},

			-- Code related commands
			{ "<leader>cce", "<cmd>CopilotChatExplain<CR>", desc = "CopilotChat - Explain code" },
			{ "<leader>cct", "<cmd>CopilotChatTests<CR>", desc = "CopilotChat - Generate Tests" },
			{ "<leader>ccr", "<cmd>CopilotChatReview<CR>", desc = "CopilotChat - Review code" },
			{ "<leader>ccR", "<cmd>CopilotCharRefactor<CR>", desc = "CopilotChat - Refactor code" },
			{ "<leader>ccn", "<cmd>CopilotChatBetterNamings<CR>", desc = "CopilotChat - Better Naming" },

			-- Chat with Copilot in visual mode
			{
				"<leader>ccv",
				":CopilotChatVisual",
				mode = "x",
				desc = "CopilotChat - Open in vertical split",
			},
			{
				"<leader>ccx",
				":CopilotChatInline<CR>",
				mode = "x",
				desc = "CopilotChat - Inline chat",
			},

			-- Custom input for CopilotChat
			{
				"<leader>cci",
				function()
					local input = vim.fn.input("Ask Copilot: ")
					if input ~= "" then
						vim.cmd("CopilotChat " .. input)
					end
				end,
				desc = "CopilotChat - Ask input",
			},

			-- Generate commit message based on the git diff
			{
				"<leader>ccm",
				"<cmd>CopilotChatCommit<CR>",
				desc = "CopilotChat - Generate commit message for all changes",
			},
			{
				"<leader>ccM",
				"<cmd>CopilotChatCommitStaged<CR>",
				desc = "CopilotChat - Generate commit message for staged changes",
			},

			-- Quick chat with Copilot
			{
				"<leader>ccq",
				function()
					local input = vim.fn.input("Quick chat: ")
					if input ~= "" then
						vim.cmd("CopilotChatBuffer " .. input)
					end
				end,
				desc = "CopilotChat - Quick chat",
			},

			-- Debug
			{ "<leader>ccd", "<cmd>CopilotChatDebugInfo<CR>", desc = "CopilotChat - Debug info" },

			-- Fix the issue with diagnostic
			{ "<leader>ccf", "<cmd>CopilotChatFixDiagnostic<CR>", desc = "CopilotChat - Fix diagnostic" },

			-- Clear buffer and chat history
			{ "<leader>ccl", "<cmd>CopilotChatReset<CR>", desc = "CopilotChat - Clear buffer and chat history" },

			-- Toggle Copilot Chat Vsplit
			{ "<leader>ccV", "<cmd>CopilotChatToggle<CR>", desc = "CopilotChat - Toggle Vsplit" },
		},
	},
}
