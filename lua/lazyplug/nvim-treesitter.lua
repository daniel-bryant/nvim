-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      auto_install = true,
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })

    -- Fix indentation issue in Ruby
    -- https://github.com/nvim-treesitter/nvim-treesitter/issues/3363#issuecomment-1538607633
    vim.cmd('autocmd FileType ruby setlocal indentkeys-=.')
  end,
}
