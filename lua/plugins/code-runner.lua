return {
  {
    "CRAG666/code_runner.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    keys = {
      -- Keymaps for running code
      {
        "<F10>",
        function()
          -- Save the current file before running the code
          vim.cmd("write")
          -- Run the code
          vim.cmd(":RunCode<CR>")
        end,
        desc = "Save and Run Code",
      },
      {
        "<F11>",
        function()
          -- Save the current file before running the code
          vim.cmd("write")
          -- Run the file
          vim.cmd(":RunFile<CR>")
        end,
        desc = "Save and Run File",
      },
      {
        "<F12>",
        function()
          -- Save the current file before building the code
          vim.cmd("write")
          -- Build the code
          vim.cmd(":RunFile tab<CR>")
        end,
        desc = "Save and Build Code",
      },

      {
        "<F9>",
        ":RunClose<CR>",
        desc = "Close Code Runner Terminal",
      },
    },
    opts = {
      filetype = {
        python = "python3 -u",
        cpp = "g++ -o a.out % -std=c++17 && ./a.out",
        javascript = "node %",
        java = "javac % && java %<",
        lua = "lua %",
        -- Add more languages as needed
      },
      mode = "float", -- Use floating terminal
      float = {
        border = "rounded",
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5,
      },
    },
  },
}
