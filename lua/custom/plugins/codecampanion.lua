return {
  'olimorris/codecompanion.nvim',
  -- config = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('codecompanion').setup {
      strategies = {
        chat = {
          adapter = 'ollama',
        },
        inline = {
          adapter = 'ollama',
        },
      },
      adapters = {
        ollama = function()
          return require('codecompanion.adapters').extend(
            'ollama',
            {
              env = {
                url = 'http://192.168.100.210:11434',
              },
              schema = {
                model = { default = 'deepseek-r1:8b' },
              },
            }
          )
        end,
      },
    }
  end,
}
