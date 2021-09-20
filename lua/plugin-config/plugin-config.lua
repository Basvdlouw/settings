-- Load custom plugin configurations
require('plugin-config/treesitter')
require('plugin-config/cmp')
require('plugin-config/telescope')
require('plugin-config/gitsigns')
require('plugin-config/lsp')

-- Java LSP
require('plugin-config/jdtls_setup')
vim.api.nvim_command([[
augroup jdtls_lsp
autocmd FileType java lua require'jdtls_setup'.setup()
augroup END 
]])
