return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',    
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function () 
      local telescope = require 'telescope'

      telescope.setup {
        defaults = {
         file_ignore_patterns = {
           'node_modules/',
           '.vscode/',
           '.git/',
           'build/',
           'dist/'
         } 
        }
      }
      local transform_mod = require('telescope.actions.mt').transform_mod
      local actions = require('telescope.actions')
      local mod = {}
      mod.open_in_nvim_tree = function(prompt_bufnr)
          local cur_win = vim.api.nvim_get_current_win()
          vim.cmd("NvimTreeFindFile")
          vim.api.nvim_set_current_win(cur_win)
      end

      mod = transform_mod(mod)

      require("telescope").setup{
          defaults = {
              mappings = {
                  i = {
                      ["<CR>"] = actions.select_default + mod.open_in_nvim_tree,
                  },
                  n = {
                      ["<CR>"] = actions.select_default + mod.open_in_nvim_tree,
                  },
              },
          },
      }

      -- Key maps
      vim.keymap.set('n', 'ff', '<cmd>:Telescope find_files<cr>')
      vim.keymap.set('n', 'fg', '<cmd>:Telescope live_grep<cr>')
  end
 }
 
