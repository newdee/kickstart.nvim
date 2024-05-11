return {
  {
    'FabijanZulj/blame.nvim',
    config = function()
      require('blame').setup {
        vim.keymap.set('n', '<leader>b', '<cmd>BlameToggle<CR>'),
      }
    end,
  },
}
