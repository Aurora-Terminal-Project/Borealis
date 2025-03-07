return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup({
			cmdline = {
				enabled = true,
				view = "cmdline_popup",
				format = {
					cmdline = { icon = " " },
					search_down = { icon = " " },
					search_up = { icon = " " },
					lua = { icon = " " },
					help = { icon = " " },
				},
			},
			views = {
				cmdline = {
					backend = "popup",
					relative = "editor",
					position = {
						row = "100%",
						col = 0,
					},
					size = {
						height = "auto",
						width = "100%",
					},
					border = {
						style = "none",
					},
					win_options = {
						winhighlight = {
							Normal = "NoiceCmdline",
							IncSearch = "",
							CurSearch = "",
							Search = "",
						},
					},
				},
			},
			messages = { enabled = false },
			popupmenu = { enabled = false },
			notify = { enabled = false },
			lsp = {
				progress = { enabled = false },
				hover = { enabled = false },
				signature = { enabled = false },
				message = { enabled = false },
			},
			presets = {
				bottom_search = false,
				command_palette = false,
				inc_rename = false,
				lsp_doc_border = false,
			},
		})
	end,
}
