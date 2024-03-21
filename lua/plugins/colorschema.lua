return { 
  'xiyaowong/transparent.nvim',
  {
    'bluz71/vim-nightfly-colors',
    config = function () 
    vim.cmd[[colorscheme nightfly]]


    vim.g.nightflyTransparent = true
  end
  },
 }
