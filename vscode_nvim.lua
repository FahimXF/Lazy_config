local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
-- move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move text down", noremap = true, silent = true })
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move text up", noremap = true, silent = true })
keymap("v", "p", '"_dP', { desc = "Paste without yanking", noremap = true, silent = true })
keymap("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down", noremap = true, silent = true })
keymap("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", noremap = true, silent = true })
keymap("x", "L", ":m '>+1<CR>gv=gv", { desc = "Move selection down", noremap = true, silent = true })
keymap("x", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up", noremap = true, silent = true })
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", noremap = true, silent = true })
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", noremap = true, silent = true })

-- better delete and yank
keymap({ "n", "v" }, "d", '"_d', { desc = "Delete without yanking", noremap = true, silent = true })
keymap("n", "x", '"_x', { desc = "Delete character without yanking", noremap = true, silent = true })
keymap("n", "c", '"_c', { desc = "Change Without Yanking", noremap = true, silent = true })

--paste without overwriting

vim.keymap.set("n", "p", "P")

-- redo

vim.keymap.set("n", "U", "<C-r>")

-- Word wrap-aware movement remaps
keymap({ "n", "v", "o" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, desc = "Move down (word wrap aware)" })
keymap({ "n", "v", "o" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, desc = "Move up (word wrap aware)" })

-- Keeping the cursor centered.
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll downwards" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll upwards" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next result" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous result" })

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

-- A lot of plugins break when enabling modelines.
vim.o.modeline = false
