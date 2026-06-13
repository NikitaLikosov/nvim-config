return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons', -- ОБЯЗАТЕЛЬНО для иконок
    config = function()
      -- Настройки Neovim для корректной работы панели
      vim.opt.termguicolors = true
      vim.opt.showtabline = 2

      require("bufferline").setup({
        options = {
          mode = "buffers", -- Работаем с файлами, а не табами nvim
          separator_style = "slant", -- Красивые наклонные разделители
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "left",
              separator = true,
            }
          },
        }
      })
    end
  },
}
