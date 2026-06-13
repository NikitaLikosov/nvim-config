return {
	"folke/lazydev.nvim",
	ft = "lua", -- загружать только для lua файлов
	opts = {
		library = {
			-- Загружать типы для плагина ве веток (опционально)
			{ path = "luvit-meta/library", words = { "vim%.uv" } },
		},
	},
}
