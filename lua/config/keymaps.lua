-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- motion keys (left, down, up, right serially)

-- Movement remaps
vim.keymap.set({ "n", "v", "o" }, "j", "h", { desc = "Move left" })
vim.keymap.set({ "n", "v", "o" }, "k", "k", { desc = "Move up" }) -- No change for 'k'
vim.keymap.set({ "n", "v", "o" }, "l", "j", { desc = "Move down" })
vim.keymap.set({ "n", "v", "o" }, ";", "l", { desc = "Move right" })

-- buffers
vim.keymap.set("n", "<tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<C-tab>", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>x", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })
vim.keymap.set("n", "<leader>X", function()
  Snacks.bufdelete.other()
end, { desc = "Delete Other Buffers" })
vim.keymap.set("n", "<leader><C-x>", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })
