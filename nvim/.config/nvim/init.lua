-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.loader then
  vim.loader.enable()
end

require ('config/plugins_lazy')
require ('settings')

