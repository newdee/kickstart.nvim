return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    vim.keymap.set('n', '<leader>xx', function()
      require('trouble').toggle()
    end),
    height = 15, -- height of the trouble list

    -- your configuration comes here
    -- or leave it empty to use the default settings
  },
}
