-- File explorer style
vim.cmd("let g:netrw_liststyle = 3")

-- Conciseness
local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true

-- Tabs & indentations
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Line wrapping disabled
opt.wrap = false
vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"typst",
		"markdown",
	},
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.linebreak = true
		vim.opt_local.breakindent = true
	end,
})

-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- Cursor line highlight
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.swapfile = false
