return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      -- Список серверов, которые Mason поставит сам при запуске
      ensure_installed = { "vtsls", "lua_ls" },
      -- ВОТ ОНО: автоматически вызывает vim.lsp.enable() для всего, что скачано
      automatic_installation = true,
    },
    config = function(_, opts)
      require("mason").setup()
      require("mason-lspconfig").setup(opts)
      
      -- В Neovim 0.11+ mason-lspconfig автоматически включит установленные серверы,
      -- если они есть в nvim-lspconfig.
    end
  }
