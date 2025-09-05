vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')
vim.keymap.set({'n', 'v'}, '<leader>d', '"+d')
vim.keymap.set({'n', 'v'}, '<leader>p', '"+p')


require 'after.highlight-on-yank'
require ("config.lazy")


-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.showmode = false
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split'
vim.opt.scrolloff = 10

vim.opt.mouse = 'a'
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



