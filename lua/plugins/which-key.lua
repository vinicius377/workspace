return {
    'folke/which-key.nvim',
    config = function()
      local wk = require'which-key'
      wk.setup{
        ignore_missing = true
      }
      wk.register({
        g = {
          name = 'Git',
          c = { '<cmd>:GitConflictListQf<cr>', 'Git Conflitcs'},
          r = { '<cmd>:GitConflictRefresh<cr>', 'Git Refresh conflicts'},
          v = { '<cmd>:DiffviewOpen<cr>', 'Git View changes open'},
          l = { '<cmd>:DiffviewClose<cr>', 'Git view changes cLose'}
        },
        t = { '<cmd>:TodoQuickFix<cr>', "List all TODO's"},
     }, { prefix = '<space>' })
    end
}
