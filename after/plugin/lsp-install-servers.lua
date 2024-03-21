local lspconfig = require('lspconfig')
local servers = require'utils.servers'

for _, server in pairs(servers) do 
  if server == 'lua_ls' then
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          completion = {
            callSnippet = "Replace"
          }
        }
      }
    })
  else
    lspconfig[server].setup{}
  end
end
