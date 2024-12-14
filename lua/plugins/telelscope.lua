return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        mappings = {

          n = { -- Normal mode mappings
            ["k"] = require("telescope.actions").move_selection_previous,
            ["l"] = require("telescope.actions").move_selection_next,
            [";"] = require("telescope.actions").close,
            ["j"] = require("telescope.actions").select_default, -- Enter the file
          },
        },
      },
    },
  },
}