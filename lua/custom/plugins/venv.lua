return {
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
    'mfussenegger/nvim-dap-python', --optional
    { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
  },
  lazy = false,
  branch = 'regexp', -- This is the regexp branch, use this for the new version
  config = function()
    require('venv-selector').setup {
      settings = {
        search = {
          rye_env = {
            command = 'fd /bin/python$ ~/.venv',
          },
          anaconda_base = {
            command = 'fd /python$ ~/anaconda3/bin --full-path --color never -E /proc',
            type = 'anaconda',
          },
          anaconda_envs = {
            command = 'fd /python$ ~/anaconda3/envs --full-path --color never -E /proc',
            type = 'anaconda',
          },
        },
      },
    }
  end,
  keys = {
    { 'vs', '<cmd>VenvSelect<cr>' },
  },
}
