local g = vim.g

g.coc_global_extensions = {
    'coc-prettier',
    'coc-pairs',
    'coc-tsserver',
    'coc-pyright',
    'coc-css',
    'coc-clangd',
    'coc-snippets',
    'coc-emmet'
}

-- Make <CR> auto-select the first completion item and notify coc.nvim to
-- format on enter, <cr> could be remapped by other vim plugin
vim.cmd([[
    inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                                  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])

