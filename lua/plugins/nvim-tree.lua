return { 
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    config = function()
       local tree = require 'nvim-tree'

       tree.setup{
        diagnostics = {
            enable = true
          }, 
     }
    end
}
