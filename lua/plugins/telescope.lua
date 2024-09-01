return {
  {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.6',    
      dependencies = { 
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-media-files.nvim'
      },
      config = function () 
        local telescope = require 'telescope'

        local transform_mod = require('telescope.actions.mt').transform_mod
        local actions = require('telescope.actions')
        local mod = {}
        mod.open_in_nvim_tree = function(prompt_bufnr)
            local cur_win = vim.api.nvim_get_current_win()
            vim.cmd("NvimTreeFindFile")
            vim.api.nvim_set_current_win(cur_win)
        end

        mod = transform_mod(mod)


        telescope.setup {
          defaults = {
           file_ignore_patterns = {
             'node_modules/',
             '.vscode/',
             '.git/',
             'build/',
             'dist/',
             '%.json',
             '%.lock'
           },
          mappings = {
              i = {
                  ["<CR>"] = actions.select_default + mod.open_in_nvim_tree,
              },
              n = {
                  ["<CR>"] = actions.select_default + mod.open_in_nvim_tree,
              },
          },
         }
        }

        telescope.load_extension('media_files')
        -- Key maps
        vim.keymap.set('n', 'ff', '<cmd>:Telescope find_files<cr>')
        vim.keymap.set('n', 'fg', '<cmd>:Telescope live_grep<cr>')
    end
   },
   {
     'nvim-telescope/telescope-media-files.nvim',
     dependencies = { 'nvim-telescope/telescope.nvim' },
     config = function()
        require('telescope').load_extension('media_files')
      end
   }
 }
 
