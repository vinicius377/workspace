return { 
  {
    'sindrets/diffview.nvim',
    config = function() 
      vim.keymap.set('n', '<leader>gf', '<cmd>:DiffviewOpen<cr>')
    end
  },
  { 'lewis6991/gitsigns.nvim' },
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
