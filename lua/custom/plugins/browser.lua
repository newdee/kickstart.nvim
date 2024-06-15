return {
  'lalitmee/browse.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    -- default values for the setup
    require('browse').setup {
      -- search provider you want to use
      provider = 'google', -- duckduckgo, bing

      -- either pass it here or just pass the table to the functions
      -- see below for more
      bookmarks = {
        ['Search'] = {
          ['name'] = 'Search',
          ['Code'] = 'https://github.com/search?q=%s&type=code',
          ['Repo'] = 'https://github.com/search?q=%s&type=repositories',
          ['Reddit'] = 'https://www.reddit.com/search/?q=%s',
          ['Bing'] = 'https://www.bing.com/search?q=%s',
          ['Duckduckgo'] = 'https://duckduckgo.com/?q=%s',
        },
        ['Work'] = {
          ['name'] = 'Work Web',
          ['ChatGpt'] = 'https://chatgpt.com',
          ['BiliBili'] = 'https://www.bilibili.com',
          ['Gmail'] = 'https://mail.google.com/mail/u/0/#inbox',
          ['Trending'] = 'https://github.com/trending',
          ['Reddit'] = 'https://www.reddit.com/r/programming/',
          ['Neovim'] = 'https://neovim.io',
        },
      },
      icons = {
        bookmark_alias = '󱍻', -- if you have nerd fonts, you can set this to ""
        bookmarks_prompt = '󱖮', -- if you have nerd fonts, you can set this to "󰂺 "
        grouped_bookmarks = '', -- if you have nerd fonts, you can set this to 
      },
      vim.keymap.set('n', '<leader>ob', '<cmd>lua require("browse").open_bookmarks()<cr>', { desc = 'Open browser Bookmark' }),
      vim.keymap.set('n', '<leader>sc', '<cmd>lua require("browse").input_search()<cr>', { desc = 'Search Context with browser' }),
      vim.keymap.set('n', '<leader>sb', '<cmd>lua require("browse").browse()<cr>', { desc = 'Search On browser' }),
    }
  end,
}
