local lspconfig = require('lspconfig')
local servers = require 'utils.servers'
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

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
  elseif server == 'html' then
    lspconfig.html.setup {
      capabilities = capabilities
    }
  elseif server == 'cssls' then
    lspconfig.cssls.setup {
      capabilities = capabilities
    }
  elseif server == 'rust_analyzer' then
    lspconfig.rust_analyzer.setup {
      settings = {
        ['rust-analyzer'] = {
          diagnostics = {
            enable = false,
          }
        }
      }
    }
  else
    lspconfig[server].setup {}
  end
end
