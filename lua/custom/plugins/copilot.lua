return {
  'github/copilot.vim',
  event = {
    'CmdlineEnter',
    'InsertEnter',
  },
  config = function()
    if os.getenv 'copilot_proxy' ~= nil then
      local proxy_url = os.getenv 'copilot_proxy' --[[@as string]]
      proxy_url = string.gsub(proxy_url, '^[^:]+://', '')
      proxy_url = string.gsub(proxy_url, '/$', '')

      vim.g.copilot_proxy = proxy_url
    end
  end,
}
