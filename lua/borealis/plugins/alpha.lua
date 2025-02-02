return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			"                                                                                                    ",
			"                                                                                                    ",
			"                                                                                                    ",
			"                                                                                                    ",
			"                                                                                                    ",
			"                                                                                                    ",
			"                                                                                                    ",
			" ░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓███████▓▒░░▒▓████████▓▒░░▒▓██████▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓███████▓▒░ ",
			" ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░        ",
			" ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒░        ",
			" ░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░░▒▓██████▓▒░ ░▒▓████████▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓██████▓▒░  ",
			" ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░ ",
			" ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░ ",
			" ░▒▓███████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓█▓▒░▒▓███████▓▒░  ",
			"                                                                                                    ",
			"                                                                                                    ",
			"                                                                                                    ",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("n", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("e", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("f", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("s", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("r", "  > Recent Files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("c", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
			dashboard.button("l", "󰒲  > Lazy", "<cmd>Lazy<CR>"),
			dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
