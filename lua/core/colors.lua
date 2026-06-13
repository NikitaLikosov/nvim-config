function SetColor(color)
    color = color or "default"
    vim.cmd.colorscheme(color)
end

SetColor("tokyonight")
