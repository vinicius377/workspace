return {
   "folke/trouble.nvim",
   dependencies = { 
     "nvim-tree/nvim-web-devicons"
   },
  config = function () 
      vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle("diagnostics") end)
      vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
  end
}
