local function attach(bufnr)
  local api = require'nvim-tree.api'
 
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set('n', 'f', '<cmd>:Telescope find_files<cr>', opts('Find files'))
  vim.keymap.set('n', 'g', '<cmd>:Telescope live_grep<cr>', opts('Find grep'))
end

return { 
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    config = function()
       local tree = require 'nvim-tree'
       local icons = require'nvim-web-devicons'

       icons.set_icon{
         astro = {
           icon = '🚀',
           name = 'Astro',
         }
       }

       tree.setup{
        diagnostics = {
            enable = true
          },
        on_attach =  attach,
        filters = {
          dotfiles = false
        }
       }

    end
}
