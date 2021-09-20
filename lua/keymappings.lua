key_opt = { noremap = true, silent = true }
-- Leader key
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', key_opt)
vim.g.mapleader = " "

-- Lexplore
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', key_opt)

-- Window movement

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h>', {silent=true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j>', {silent=true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k>', {silent=true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l>', {silent=true})

-- Better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', key_opt)
vim.api.nvim_set_keymap('v', '>', '>gv', key_opt)

-- jk and kj for insert mode 
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', key_opt)
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', key_opt)

-- Tab switch buffer

vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', key_opt)
vim.api.nvim_set_keymap('n', '<TAB>', ':bprevious<CR>', key_opt)

-- Move selected line / block of test in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv\'', key_opt)
vim.api.nvim_set_keymap('x', 'J', ':move \'>+2<CR>gv-gv\'', key_opt)

-- Tab completion
vim.api.nvim_set_keymap('i', '<expr><TAB>', 'pumvisible() > \"\\<C-n>\": \"\\<TAB>\"', key_opt)

-- Word wrapping
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Leader shortcuts telescope
vim.api.nvim_set_keymap('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sf', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>st', [[<cmd>lua require('telescope.builtin').tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sd', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], { noremap = true, silent = true })
