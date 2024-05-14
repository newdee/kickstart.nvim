return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_proxy = 'http://localhost:7890'
  end,
}
