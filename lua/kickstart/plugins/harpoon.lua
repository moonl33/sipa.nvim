return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    vim.keymap.set('n', '<Leader>a', function()
      harpoon:list():add()
    end, { desc = 'Harpoon quick add' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Show harpoon list' })

    vim.keymap.set('n', '<Leader>1', function()
      harpoon:list():select(1)
    end, { desc = 'Harppon 1' })
    vim.keymap.set('n', '<Leader>2', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon 2' })
    vim.keymap.set('n', '<Leader>3', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon 3' })
    vim.keymap.set('n', '<Leader>4', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon 4' })
  end,
}
