-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- --sync system clipboard with vim clipboard
vim.opt.clipboard = "unnamedplus"
--search ignoring case
vim.opt.ignorecase = true

--disable ignorecase if search contains capital letters

vim.opt.smartcase = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = true

--something about tab and space idk
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

--keeping the cursor in the middle

vim.opt.scrolloff = 999

--can Select line-end spaces in visual mode

vim.opt.virtualedit = "block"

--show multiples changes seperately
vim.opt.inccommand = "split"

-- Save undo history
vim.o.undofile = true

--Enable break indenting
vim.opt.breakindent = true

-- Enable mouse supports
vim.opt.mouse = "a"

-- Disable horizontal scrolling.
vim.o.mousescroll = "ver:3,hor:0"

-- Add binaries installed by mason.nvim to path.
vim.env.PATH = vim.env.PATH .. ":" .. vim.fn.stdpath("data") .. "/mason/bin"

-- A lot of plugins break when enabling modelines.
vim.o.modeline = false
