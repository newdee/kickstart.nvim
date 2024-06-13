return {
  'mrcjkb/rustaceanvim',
  version = '^4', -- Recommended
  lazy = false, -- This plugin is already lazy
  config = function()
    vim.g.rustaceanvim = {
      -- Plugin configuration
      tools = {},
      -- LSP configuration
      server = {
        on_attach = function(client, bufnr)
          -- you can also put keymaps in here
          vim.keymap.set('n', '<leader>n', function()
            vim.cmd.RustLsp 'codeAction' -- supports rust-analyzer's grouping
            -- or vim.lsp.buf.codeAction() if you don't want grouping.
          end, { desc = 'codeAction', silent = true, buffer = bufnr })
        end,
        default_settings = {
          -- rust-analyzer language server configuration
          ['rust-analyzer'] = {},
        },
      },
      -- DAP configuration
      dap = {},
    }
  end,
}
