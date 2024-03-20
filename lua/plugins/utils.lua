return {
 { 
   'windwp/nvim-ts-autotag',
   config = function()
      local autotag = require('nvim-ts-autotag')

      autotag.setup()
    end
 },
 { 
   'windwp/nvim-autopairs',
   config = function() 
      local autopairs = require('nvim-autopairs')

      autopairs.setup{}
  end
 },
 'nvim-treesitter/nvim-treesitter-context',
 { 
   'echasnovski/mini.indentscope',
   config = function ()
      require('mini.indentscope').setup()
   end
 }, 
}
