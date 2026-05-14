require('config.options')
require('config.keybinds')
require('config.lazy')
require('lsp')

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("Neotree show")
  end,
})
