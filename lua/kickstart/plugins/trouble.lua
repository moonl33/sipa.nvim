return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  -- Lua
  config = function()
    local trouble = require 'trouble'
    -- Lua
    vim.keymap.set('n', '<leader>xx', function()
      trouble.toggle()
    end, { desc = 'Trouble Toggle' })
    vim.keymap.set('n', '<leader>xw', function()
      trouble.toggle 'workspace_diagnostics'
    end, { desc = 'Trouble Workspace Diagnostics' })
    vim.keymap.set('n', '<leader>xd', function()
      trouble.toggle 'document_diagnostics'
    end, { desc = 'Trouble Document Diagnostics' })
    vim.keymap.set('n', '<leader>xq', function()
      trouble.toggle 'quickfix'
    end, { desc = 'Trouble Quickfix' })
    vim.keymap.set('n', '<leader>xl', function()
      trouble.toggle 'loclist'
    end, { desc = 'Trouble Loclist' })

    -- If we have Trouble plugin then we inline display the diagnostics from lsp
    vim.diagnostic.config {
      virtual_text = false,
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = false,
    }
    vim.keymap.set('n', '<leader>xs', function()
      vim.diagnostic.config {
        virtual_text = true,
      }
    end, { desc = 'Trouble Show Diagnostics Line' }) -- Show diagnostics
    vim.keymap.set('n', '<leader>xS', function()
      vim.diagnostic.config {
        virtual_text = false,
      }
    end, { desc = 'Trouble Hide Diagnostics Line' }) -- Hide diagnostics
  end,
}
