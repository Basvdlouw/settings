-- Load custom plugin configurations
require('plugin-config/treesitter')
require('plugin-config/cmp')
require('plugin-config/telescope')
require('plugin-config/gitsigns')
require('plugin-config/lsp')

-- Java LSP
vim.api.nvim_command("autocmd FileType java lua require'jdtls_setup'.setup()")
