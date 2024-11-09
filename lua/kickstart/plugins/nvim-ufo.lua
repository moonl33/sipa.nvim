return {
  'kevinhwang91/nvim-ufo',
  dependencies = 'kevinhwang91/promise-async',
  setup = function()
    vim.g.ufo = {
      -- The default value is 0.5
      -- The value is a float between 0 and 1
      -- The higher the value, the more the UFO will be visible
      opacity = 0.5,
      -- The default value is 0.5
      -- The value is a float between 0 and 1
      -- The higher the value, the more the UFO will be visible
      highlight_opacity = 0.5,
    }
  end,
  provider_selector = function(bufnr, filetype, provider)
    return { 'treesitter', 'indent' }
  end,
}
