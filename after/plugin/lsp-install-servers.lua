local lspconfig = require('lspconfig')
local servers = require'utils.servers'

for _, server in pairs(servers) do 
  lspconfig[server].setup{}
end
