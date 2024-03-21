return { 
  {
    'sindrets/diffview.nvim',
    config = function() 
      vim.keymap.set('n', '<leader>gf', '<cmd>:DiffviewOpen<cr>')
    end
  },  
  { 
    'lewis6991/gitsigns.nvim',
    config = function()
      require'gitsigns'.setup{
        current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
          delay = 1000,
          ignore_whitespace = false,
          virt_text_priority = 100,
        },
        current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
      } 
    end
  },
  {
    'akinsho/git-conflict.nvim',
    version = "*",
    config = function()
      local gitconflict = require('git-conflict')

      gitconflict.setup{
        default_mappings = {
          ours = 'o',
          theirs = 't',
          none = '0',
          both = 'b',
          next = 'n',
          prev = 'p',
        },
      }

      vim.api.nvim_create_autocmd('User', {
        pattern = 'GitConflictDetected',
        callback = function()
          vim.notify('Conflict detected in '..vim.fn.expand('<afile>'))
          vim.keymap.set('n', 'cww', function()
            engage.conflict_buster()
            create_buffer_local_mappings()
          end)
        end
      })
    end
  } 
}
