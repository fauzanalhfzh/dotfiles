-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set('i', 'jk', '<Esc>', { desc = "Keluar dari insert mode" })

-- Laravel: jalankan Pest
vim.keymap.set('n', '<leader>tf', function()
  -- ponytail: path absolut biar aman dari cwd mana pun
  local file = vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
  Snacks.terminal('php artisan test ' .. file, { cwd = LazyVim.root() })
end, { desc = "Run Pest: file saat ini" })

vim.keymap.set('n', '<leader>tt', function()
  Snacks.terminal('php artisan test', { cwd = LazyVim.root() })
end, { desc = "Run Pest: semua test" })
