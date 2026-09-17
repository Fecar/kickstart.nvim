vim.pack.add { { src = 'https://github.com/stevearc/oil.nvim' }, 'https://github.com/nvim-tree/nvim-web-devicons' }

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
vim.keymap.set('n', '<leader>-', require('oil').toggle_float, { desc = 'Open parent directory' })

require('oil').setup {
  columns = { 'icon' },
  keymaps = {
    ['<C-h>'] = false,
    ['<M-h>'] = 'actions.select_split',
  },
  view_options = {
    show_hidden = true,
  },
}
