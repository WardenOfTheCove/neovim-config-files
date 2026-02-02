return {
  -- LSP Support
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      -- Autocompletion (The "Drop down menus")
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "clangd", "bashls", "ts_ls", "rust_analyzer" } -- Add your languages here
      })

      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- Setup your languages
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.pyright.setup({ capabilities = capabilities })
      lspconfig.clangd.setup({capabilities = capabilities})
      lspconfig.ts_ls.setup({capabilities = capabilities})
      lspconfig.bashls.setup({capabilities = capabilities})
      lspconfig.rust_analyzer.setup({capabilities = capabilities})

      -- Show diagnostic popup on cursor hover
      vim.api.nvim_create_autocmd("CursorHold", {
        callback = function()
        vim.diagnostic.open_float(nil, { focusable = false })
      end,
      })

      -- Set hover delay (default is 4000ms, which is too slow)
      vim.opt.updatetime = 300
    end
  }
}
