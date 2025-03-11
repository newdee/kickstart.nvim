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
          ['RustCheat'] = 'https://cheats.rs',
          ['TableGenerate'] = 'https://www.tablesgenerator.com/',
        },
        ['Awesome'] = {
          ['name'] = 'Awesome Lists',
          ['awesome-cpp'] = 'https://github.com/fffaraz/awesome-cpp',
          ['awesome-hpp'] = 'https://github.com/p-ranav/awesome-hpp',
          ['awesome-python'] = 'https://github.com/vinta/awesome-python',
          ['awesome-rust'] = 'https://github.com/rust-unofficial/awesome-rust',
          ['awesome-go'] = 'https://github.com/avelino/awesome-go',
          ['awesome-lua'] = 'https://github.com/LewisJEllis/awesome-lua',
          ['awesome-shell'] = 'https://github.com/alebcay/awesome-shell',
          ['awesome-neovim'] = 'https://github.com/rockerBOO/awesome-neovim',
          ['awesome-ruby'] = 'https://github.com/markets/awesome-ruby',
          ['awesome-kotlin'] = 'https://github.com/KotlinBy/awesome-kotlin',
          ['awesome-java'] = 'https://github.com/akullpp/awesome-java',
          ['awesome-javascript'] = 'https://github.com/sorrycc/awesome-javascript',
          ['awesome-php'] = 'https://github.com/ziadoz/awesome-php',
          ['awesome-swift'] = 'https://github.com/matteocrippa/awesome-swift',
          ['awesome-haskell'] = 'https://github.com/krispo/awesome-haskell',
          ['awesome-elixir'] = 'https://github.com/h4cc/awesome-elixir',
          ['awesome-clojure'] = 'https://github.com/razum2um/awesome-clojure',
          ['awesome-r'] = 'https://github.com/qinwf/awesome-R',
          ['awesome-julia'] = 'https://github.com/svaksha/Julia.jl',
          ['awesome-scala'] = 'https://github.com/lauris/awesome-scala',
          ['awesome-clojurescript'] = 'https://github.com/hantuzun/awesome-clojurescript',
          ['awesome-erlang'] = 'https://github.com/drobakowski/awesome-erlang',
          ['awesome-ocaml'] = 'https://github.com/rizo/awesome-ocaml',
          ['awesome-dart'] = 'https://github.com/yissachar/awesome-dart',
          ['awesome-software-arch'] = 'https://github.com/mehdihadeli/awesome-software-architecture',
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
