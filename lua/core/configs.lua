local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.tabstop = 2 -- Размер таба
opt.shiftwidth = 2 -- Отступ при автоинденте
opt.expandtab = true -- Пробелы вместо табов
opt.clipboard = "unnamedplus" -- Использовать системный буфер обмена macOS
opt.termguicolors = true -- Поддержка 24-битных цветов

opt.mouse = "a"
opt.mousefocus = true

opt.langmenu = "ru_ru.utf-8"
opt.swapfile = false

vim.diagnostic.config({
	virtual_text = true, -- Inline ошибки
	signs = true, -- Знаки в gutter
	float = { source = "always" }, -- Показывать источник в попапе
})

vim.lsp.config("tsgo", {
	cmd = { "tsgo", "--lsp", "--stdio" },
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
	},
	root_dir = function(fname)
		return vim.fs.root(fname, {
			"tsconfig.json",
			"jsconfig.json",
			"package.json",
			".git",
			"tsconfig.base.json",
		})
	end,
	-- enabled = true; не нужно, есть enable
})
vim.lsp.enable("tsgo")
