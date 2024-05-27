return {
  'tpope/vim-fugitive',
  setup = function()
    vim.g.fugitive_git_executable = 'git'
  end,
  -- Our custom keymaps
  vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Open Fugitive' }),
}
