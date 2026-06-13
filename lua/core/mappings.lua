local map = vim.keymap.set
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- Pluginls
map("n", "<leader>o", ":Oil<CR>", { desc = "Toggle NvimTree" })
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>Q", ":q<CR>")
map("n", "<leader>q", ":bd<CR>")

local builtin = require("telescope.builtin")

map("n", "fb", ":Telescope file_browser<CR>")
map("n", "ff", builtin.find_files, {})
map("n", "fw", builtin.live_grep, {})
map("n", "<leader>fp", ":NeovimProjectDiscover<CR>", { desc = "Find projects" })
map("n", "fb", builtin.buffers, {})
map("n", "fh", builtin.help_tags, {})
map("n", "gb", builtin.git_branches, {})
map("n", "gc", builtin.git_commits, {})
map("n", "gs", builtin.git_status, {})
map("n", "ls", builtin.lsp_document_symbols, {})
map("n", "fx", builtin.treesitter, {})
map("n", "fs", builtin.spell_suggest, {})
map("n", "gd", builtin.lsp_definitions, { noremap = true, silent = true })
map("n", "<leader>r", builtin.lsp_references, { buffer = 0 })
map("n", "<leader>cp", function()
	vim.api.nvim_call_function("setreg", { "+", vim.fn.fnamemodify(vim.fn.expand("%"), ":.") })
end, { desc = "Копировать относительный путь" })
