vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true


local opt = vim.opt

-- Line number
opt.number = true -- Print line number
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true -- Insert indents automatically

-- line Wrapping
opt.wrap = false

-- search setting
opt.ignorecase = true
opt.smartcase = true

-- Cursor Line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

--split window
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
opt.spelllang = { "en" }
opt.spelloptions:append("noplainbuffer")
opt.swapfile = false
