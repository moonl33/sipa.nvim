return {
  'rmagatti/auto-session',
  config = function()
    local auto_session = require 'auto-session'
    auto_session.setup {
      auto_restore_enabled = true,
      auto_save_enabled = true,
      auto_session_use_git_branch = true,
      pre_save_cmds = {
        function()
          vim.cmd 'Neotree close'
        end,
      },
    }

    vim.keymap.set('n', '<leader>WR', '<cmd>SessionRestore<CR>', { desc = ' Restore session' })
    vim.keymap.set('n', '<leader>WS', '<cmd>SessionSave<CR>', { desc = ' Save session' })
    vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'
  end,
}
