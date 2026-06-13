return {
  {
    'stevearc/conform.nvim',
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        -- Сначала пробуем prettierd, если его нет — обычный prettier
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        javascriptreact = { "prettierd", "prettier", stop_after_first = true },
        typescriptreact = { "prettierd", "prettier", stop_after_first = true },
        json = { "prettierd", "prettier", stop_after_first = true },
        html = { "prettierd", "prettier", stop_after_first = true },
        css = { "prettierd", "prettier", stop_after_first = true },
      },
      -- Настройка сохранения
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback", -- если нет преттиера, использовать форматирование от LSP
      },
    },
  },
}
