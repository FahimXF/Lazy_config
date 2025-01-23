-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
--vim.cmd("colorscheme default")
vim.cmd("colorscheme github_dark_dimmed")

vim.diagnostic.config({
  virtual_text = false,
})
