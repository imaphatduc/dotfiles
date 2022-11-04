vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'html', 'css', 'javascript' },
    command = 'EmmetInstall'
})

-- set indentation to 2 spaces in html files
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'html',
    command = 'setlocal tabstop=2 shiftwidth=2 expandtab',
})

-- enable the marker method of folding
local foldGroup = vim.api.nvim_create_augroup('filetype_vim', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
    group = foldGroup,
    pattern = { 'vim', 'lua' },
    command = 'setlocal foldmethod=marker'
})

-- display cursorline and cursorcolumn ONLY in active window
local cursorOffGroup = vim.api.nvim_create_augroup('cursor_off', { clear = true })

vim.api.nvim_create_autocmd('WinEnter', {
    group = cursorOffGroup,
    pattern = { '*' },
    command = 'set cursorline nocursorcolumn'
})

vim.api.nvim_create_autocmd('WinLeave', {
    group = cursorOffGroup,
    pattern = { '*' },
    command = 'set nocursorline nocursorcolumn'
})

