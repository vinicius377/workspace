local map = vim.keymap.set

map('n', '<space>q', '<cmd>bd<cr>')
map('n', '<C-a>', '<cmd>NvimTreeToggle<cr>')

-- splits navigator remaps
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Change between buffers
map('n', '<leader>n', '<cmd>:bnext<cr>')
map('n', '<leader>p', '<cmd>:bprevious<cr>')

-- Delete no copy text
map('n', 'x', '"_x')
map('v', 'x', '"_x')
map('n', 'd', '"_d')
map('v', 'd', '"_d')
