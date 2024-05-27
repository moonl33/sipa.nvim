return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
      { 'github/copilot.vim' }, -- or github/copilot.vim
      { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
    },
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
    },
    -- See Commands section for default commands if you want to lazy load on them
    vim.api.nvim_set_keymap('n', '<leader>zz', ':Copilot disable<CR>', { desc = 'Disable Copilot Autocomplete.', noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<leader>zZ', ':Copilot enable<CR>', { desc = 'Enable Copilot Autocomplete.', noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<leader>zr', ':Copilot reload<CR>', { desc = 'Reload Copilot Autocomplete.', noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<leader>zco', ':CopilotChat <CR>', { desc = 'Open Copilot Chat.', noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<leader>zcc', ':CopilotChatClose <CR>', { desc = 'Close Copilot Chat.', noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<leader>zcr', ':CopilotChatReload <CR>', { desc = 'Reload Copilot Chat.', noremap = true, silent = true }),
    vim.api.nvim_set_keymap('n', '<leader>zcs', ':CopilotChatStop <CR>', { desc = 'Stop Copilot Chat.', noremap = true, silent = true }),
  },
}
