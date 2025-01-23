-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- motion keys (left, down, up, right serially)

-- Movement remaps
keymap({ "n", "v", "o" }, "j", "h", { desc = "Move left" })
keymap({ "n", "v", "o" }, "k", "k", { desc = "Move up" }) -- No change for 'k'
keymap({ "n", "v", "o" }, "l", "j", { desc = "Move down" })
keymap({ "n", "v", "o" }, ";", "l", { desc = "Move right" })

-- buffers
keymap("n", "<tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
keymap("n", "<S-tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
keymap("n", "<C-tab>", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
keymap("n", "<leader>x", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })
keymap("n", "<leader>X", function()
  Snacks.bufdelete.other()
end, { desc = "Delete Other Buffers" })
keymap("n", "<leader><C-x>", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- better window navigation
keymap("n", "<C-j>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-l>", "<C-w>j", { desc = "Move to down window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to up window" })
keymap("n", "<C-;>", "<C-w>l", { desc = "Move to right window" })

-- move text up and down
keymap("v", "<A-l>", ":m '>+1<CR>gv=gv", { desc = "Move text down", noremap = true, silent = true })
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move text up", noremap = true, silent = true })
keymap("v", "p", '"_dP', { desc = "Paste without yanking", noremap = true, silent = true })
keymap("n", "<A-l>", ":m .+1<CR>==", { desc = "Move line down", noremap = true, silent = true })
keymap("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", noremap = true, silent = true })
keymap("x", "L", ":m '>+1<CR>gv=gv", { desc = "Move selection down", noremap = true, silent = true })
keymap("x", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up", noremap = true, silent = true })
keymap("x", "<A-l>", ":m '>+1<CR>gv=gv", { desc = "Move selection down", noremap = true, silent = true })
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up", noremap = true, silent = true })

-- better delete and yank
keymap({ "n", "v" }, "d", '"_d', { desc = "Delete without yanking", noremap = true, silent = true })
keymap("n", "x", '"_x', { desc = "Delete character without yanking", noremap = true, silent = true })

-- repeat previous f,t,F,T command

vim.keymap.set("n", "'", ";")

--paste without overwriting

vim.keymap.set("n", "p", "P")

-- redo

vim.keymap.set("n", "U", "<C-r>")

----skip folds (up, down)
--
--vim.cmd("nmap k gk")
--vim.cmd("nmap l gj")

-- Escape and save changes.
vim.keymap.set({ "s", "i", "n", "v" }, "<C-s>", "<esc>:w<cr>", { desc = "Exit insert mode and save changes." })

-- Clear search with <esc>
vim.keymap.set("n", "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Floating terminal.
vim.keymap.set("n", "<M-t>", function()
  require("utils.float_term").float_term(nil, {})
end, { desc = "Open terminal" })
vim.keymap.set("t", "<M-t>", "<cmd>close<cr>", { desc = "Close terminal" })

-- Word wrap-aware movement remaps
keymap({ "n", "v", "o" }, "l", "v:count == 0 ? 'gj' : 'j'", { expr = true, desc = "Move down (word wrap aware)" })
keymap({ "n", "v", "o" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, desc = "Move up (word wrap aware)" })

-- Keeping the cursor centered.
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll downwards" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll upwards" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next result" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous result" })

-- Quitting.
vim.keymap.set("n", "<leader>Q", "<cmd>qa<cr>", { desc = "Quit all" })

-- Execute macro over visual region.
vim.keymap.set("x", "@", function()
  return ":norm @" .. vim.fn.getcharstr() .. "<cr>"
end, { expr = true })

-- CodeRunner
vim.keymap.set("n", "<leader>rr", ":RunCode<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })

--Sniprun
vim.api.nvim_set_keymap("v", "<leader>rs", "<Plug>SnipRun", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>rs", "<Plug>SnipRun", { silent = true })
