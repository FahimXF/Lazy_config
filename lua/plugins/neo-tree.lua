return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      -- Example custom keymap for opening Neo-tree
      { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle File Explorer" },
      -- Custom keymap to focus Neo-tree
      { "f", "<cmd>Neotree focus<cr>", desc = "Focus on Neo-tree" },
    },
    opts = {
      window = {
        mappings = {
          ["k"] = "prev_sibling", -- Move to previous sibling
          ["h"] = "focus_parent", -- Move to parent node
          ["l"] = "next_sibling", -- Move to next sibling
        },
      },
    },
  },
}
