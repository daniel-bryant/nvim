-- Copy current file path
-- https://www.reddit.com/r/neovim/comments/u221as/how_can_i_copy_the_current_buffers_relative_path/
-- https://stackoverflow.com/questions/69050359/how-to-get-the-current-buffer-file-path-using-the-neovim-lua-api
function copyPath()
  local path = vim.fn.expand("%:.")
  -- alternatives:
  -- local path = vim.fn.expand("%:p")
  -- local path = vim.api.nvim_buf_get_name(0)
  vim.fn.setreg("+", path)
  vim.notify('"' .. path .. '" copied')
end
vim.keymap.set('n', '<leader>cp', copyPath, {})

-- Yank visual selections to clipboard
vim.keymap.set('v', '<leader>y', '"+y')
