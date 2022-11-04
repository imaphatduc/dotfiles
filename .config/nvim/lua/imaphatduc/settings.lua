local g = vim.g
local o = vim.o

vim.cmd('syntax on')
vim.cmd('colorscheme tokyonight-night')

vim.api.nvim_command('filetype plugin indent on')

-- o.background = 'dark'

o.number = true

o.shiftwidth = 4

o.tabstop = 4

o.expandtab = true

o.nobackup = true

o.cursorline = true
o.nocursorcolumn = true

o.scrolloff = 8

o.nowrap = true

o.incsearch = true

o.ignorecase = true

o.smartcase = true

o.showcmd = true

o.showmode = true

o.showmatch = true

o.hlsearch = true

o.history = 1000

-- o.wildmenu = true
-- o.wildmode = 'list:longest'

o.splitright = true
o.splitbelow = true

o.termguicolors = true
-- o.background = 'dark'

-- wildmenu ignores these filetypes
o.wildignore = '*.docx,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx'

-- set encoding
o.encoding = 'utf8'

-- enable mouse functions
o.mouse = 'a'

o.undodir = '~/.vim/backup'
o.undofile = true
o.undoreload = 10000

---++---

g.mapleader = ','
g.maplocalleader = ','

g.vim_json_conceal = false

-- update the packpath
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path

