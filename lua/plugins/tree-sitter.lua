return {
    'nvim-treesitter/nvim-treesitter',
    build =  ':TSUpdate',
    config = function()
      local ensure_installed = { 'java'}
      require("nvim-treesitter.configs").setup({
				highlight = { enable = true },
				indent = { enable = true },
        ensure_installed = ensure_installed
			})
    end
}
