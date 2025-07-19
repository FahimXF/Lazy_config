-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
--vim.cmd("colorscheme default")
--vim.cmd("colorscheme github_dark_dimmed")
vim.cmd("colorscheme tokyonight-moon")

vim.diagnostic.config({
  virtual_text = false,
})

--vim.g.snacks_animate = false
