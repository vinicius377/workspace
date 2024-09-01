return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local todo = require 'todo-comments';
      todo.setup {}
    end
  },
  {
    'mattn/emmet-vim'
  },
  {
    'ap/vim-css-color'
  },
  {
    'L3MON4D3/LuaSnip',
    dependencies = {
      'rafamadriz/friendly-snippets',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/vim-vsnip'
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

      autopairs.setup {}
    end
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      require 'treesitter-context'.setup {
        max_lines = 4,
      }
    end
  },
  {
    'echasnovski/mini.indentscope',
    config = function()
      require('mini.indentscope').setup()
    end
  },
  {
    'terroo/vim-simple-emoji'
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    'editorconfig/editorconfig-vim'
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    "prisma/vim-prisma"
  },
  {
    "prettier/vim-prettier"
  }
}


--  {
--    'Exafunction/codeium.vim',
--    event = 'BufEnter'
--  },
--
-- {
--     "vhyrro/luarocks.nvim",
--     priority = 1001, -- this plugin needs to run before anything else
--     opts = {
--         rocks = { "magick" },
--     },
--     config = function ()
--      require('luarocks-nvim').setup{} 
--     end
-- },
-- {
--     "3rd/image.nvim",
--     dependencies = { "luarocks.nvim" },
--     config = function()
--       require'image'.setup{}
--     end
-- }
