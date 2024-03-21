return {
  {
    'L3MON4D3/LuaSnip',
    dependencies = {
      'rafamadriz/friendly-snippets',
      'saadparwaiz1/cmp_luasnip'
    }
 },
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
  { 
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      require('nvim-treesitter').setup{
        max_lines = 3,
      }
    end
  },
 { 
   'echasnovski/mini.indentscope',
   config = function ()
      require('mini.indentscope').setup()
   end
 }, 
}
