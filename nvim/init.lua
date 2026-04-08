vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y') -- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", '"+d') -- delete to clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p') -- paste from clipboard
vim.keymap.set({ "n", "v" }, "<leader>f", function()
	vim.lsp.buf.format({ name = "efm" })
end)

vim.keymap.set("n", "gs", "<nop>") -- unbind sleep command for remapping to surround

vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/nvim-mini/mini.nvim", version = "stable" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/folke/which-key.nvim" },
	{ src = "https://github.com/creativenull/efmls-configs-nvim" },
	{ src = "https://github.com/EdenEast/nightfox.nvim" },
})

-- require("mini.clue").setup()
require("mini.surround").setup({
	mappings = {
		add = "gsa",
		delete = "gsd",
		find = "gsf",
		find_left = "gsF",
		highlight = "gsh",
		replace = "gsr",
		suffix_last = "l",
		suffix_next = "n",
	},
})

require("mini.statusline").setup()
require("mini.pick").setup()
require("mini.git").setup()
require("mini.comment").setup() -- gc comment, gcc comment line
require("which-key").setup()

require("lsps") -- setup langauge servers
require("efms") -- setup formatters and linters as efm lsp
require("yank_highlight") -- highlight when yanking

vim.cmd("colorscheme nightfox")

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.showmode = false
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.inccommand = "split"
vim.opt.scrolloff = 10

vim.opt.mouse = "a"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.undofile = true

-- indent stuff also see indentexpr
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.smartindent = true
-- insensitive unless \C or contains cap
vim.opt.ignorecase = true
vim.opt.smartcase = true
