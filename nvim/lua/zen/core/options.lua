vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = false
opt.number = true

-- tabs & Indentations
opt.tabstop = 2 --space 2 for tabs
opt.shiftwidth = 2 -- 2 space indent width
opt.expandtab = true -- expand tab to space
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixes case in your search, assumes you want case-sensitive

opt.cursorline = true

-- turn on termguicolors
-- (have tou use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split window
opt.splitright = true -- split vertikal window to the right
opt.splitbelow = true -- split horizontal window to the bottom

