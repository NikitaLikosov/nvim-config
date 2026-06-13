return {
	-- 1. Mason: менеджер серверов
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	-- 2. Mason-lspconfig: связка с Neovim
	{
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
		end,
	},
	-- 3. nvim-lspconfig: настройки самого LSP
	{
		"neovim/nvim-lspconfig",
		lazy = false, -- КРИТИЧНО: конфиги должны быть доступны сразу для vim.lsp.enable
	},
}
