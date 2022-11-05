local silent_opts = { silent = true }

local map = vim.keymap.set;

map('n', '<leader>n', ':NeoTreeFocus<CR>', silent_opts)
map('n', '<C-n>', ':NeoTreeShow<CR>', silent_opts)
map('n', '<C-t>', ':NeoTreeShowToggle<CR>', silent_opts)

require('neo-tree').setup({
    window = {
        width = 32,
    }
})

