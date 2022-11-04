local silent_opts = { silent = true }
local nowait_opts = { nowait = true }

local map = vim.keymap.set;

-- turn off search highlighting
map('n', '<leader>', ':nohlsearch<CR>')

-- jump back to the last cursor position
map('n', '<leader>\\', '``')

-- source any vimscript quickly
map('n', '<leader>s', ':w :source %<CR>')

-- print the current file to the default printer from a Linux operating system
-- view available printers:   `lpstat -v`
-- set default printer:       `lpoptions -d <printer_name>``
map('n', '<leader>p', ':%w !lp<CR>', silent_opts)

-- space bar as shortcut to go to command mode
map('n', '<space>', ':', nowait_opts)

-- center the cursor vertically when moving between words during a search
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- yank from cursor to the end of line
map('n', 'Y', 'y$')

-- navigate between split views easier
map('n', '<c-j>', '<c-w>j')
map('n', '<c-k>', '<c-w>k')
map('n', '<c-h>', '<c-w>h')
map('n', '<c-l>', '<c-w>l')

-- resize split windows
map('n', 'K', '<c-w>+')
map('n', 'J', '<c-w>-')
map('n', 'L', '<c-w>>')
map('n', 'H', '<c-w><')

map('n', ':Prettier', ':CocCommand prettier.formatFile<CR>')

map('n', ':T', ':split | resize 12 | terminal<CR>')

-- ORGANIZING TABS ---{{{

-- previous/next
map('n', '<A-,>', ':bprevious<CR>', silent_opts)
map('n', '<A-.>', ':bnext<CR>', silent_opts)

-- goto
map('n', '<A-<>', ':b 1<CR>', silent_opts)
map('n', '<A-2>', ':b 2<CR>', silent_opts)
map('n', '<A-3>', ':b 3<CR>', silent_opts)
map('n', '<A-4>', ':b 4<CR>', silent_opts)
map('n', '<A-5>', ':b 5<CR>', silent_opts)
map('n', '<A-6>', ':b 6<CR>', silent_opts)
map('n', '<A-7>', ':b 7<CR>', silent_opts)
map('n', '<A-8>', ':b 8<CR>', silent_opts)
map('n', '<A-9>', ':b 9<CR>', silent_opts)
map('n', '<A->>', ':blast<CR>', silent_opts)

-- delete
map('n', '<A-c>', ':bdelete!<CR>', silent_opts)

-- pin/unpin

-- magic-picking mode

-- }}}

---++---

map('i', 'jj', '<Esc>')

-- AUTO CLOSING QUOTES AND BRACES ---{{{

map('i', '"', '""<left>')
map('i', "'", "''<left>")
map('i', '(', '()<left>')
map('i', '[', '[]<left>')
map('i', '{', '{}<left>')

-- map('i', '(<CR>', '(<CR>)<ESC>O')
-- map('i', '[<CR>', '[<CR>]<ESC>O')
-- map('i', '{<CR>', '{<CR>}<ESC>O')

-- }}}

---++---

map('v', '<C-c>', ":'<,'>w !xclip -selection clipboard<CR><CR>")

