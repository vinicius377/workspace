return {
    'nvimtools/none-ls.nvim',
    dependencies = {
      'davidmh/cspell.nvim',
    },
    config =  function()
      local null_ls = require("null-ls")
      local cspell = require'cspell'

      null_ls.setup({
          sources = {
              null_ls.builtins.formatting.stylua,
              null_ls.builtins.formatting.prettier,
              --cspell.diagnostics.with({ config = spell_config})
          },
      })
    end
}
