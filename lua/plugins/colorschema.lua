local highlight = vim.api.nvim_set_hl
  local white = "#c3ccdc"

return { 
  'xiyaowong/transparent.nvim',
  {
    'bluz71/vim-nightfly-colors',
    config = function () 
      --vim.cmd[[colorscheme nightfly]]
      
      highlight(0, "SpellBad", { bg = 'NONE', undercurl = true, sp = white })
  end
  },
  {
    'catppuccin/nvim', 
    config = function()
      vim.cmd[[colorscheme catppuccin]]
    end
  }
}
