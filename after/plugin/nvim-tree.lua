local verify_is_visible = require'nvim-tree.view'.is_visible vim.keymap.set('n', '<leader>d', function () vim.cmd(':bdelete') 
 if verify_is_visible() then 
   vim.cmd(':bnext')
 end
end)


