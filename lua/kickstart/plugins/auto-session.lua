return {
  'rmagatti/auto-session',
  config = function()
    local auto_session = require 'auto-session'
    auto_session.setup {
      auto_restore_enabled = false,
    }

    vim.keymap.set('n', '<leader>WR', '<cmd>SessionRestore<CR>', { desc = ' Restore session' })
    vim.keymap.set('n', '<leader>WS', '<cmd>SessionSave<CR>', { desc = ' Save session' })
  end,
}
