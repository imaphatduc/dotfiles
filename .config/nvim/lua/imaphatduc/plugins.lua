local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('config')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(
    function(use)
        use('wbthomason/packer.nvim')

        -- use('dense-analysis/ale')

        use('preservim/nerdtree')

        use('tiagofumo/vim-nerdtree-syntax-highlight')

        -- use('Brettm12345/moonlight.vim')

        use('folke/tokyonight.nvim')

        -- use({
        --     'shaunsingh/moonlight.nvim',
        --     config = function ()
        --         require('imaphatduc.plugins.moonlight')
        --     end
        -- })

        -- use('bluz71/vim-mistfly-statusline')

        -- use('itchyny/lightline.vim')

        -- use('vim-airline/vim-airline')

        use({
            'nvim-lualine/lualine.nvim',
            config = function ()
                require('imaphatduc.plugins.lualine')
            end
        })

        use({
            'neoclide/coc.nvim',
            branch = 'release',
            config = function ()
                require('imaphatduc.plugins.coc')
            end
        })

        use({
            'iamcco/markdown-preview.nvim',
            run = 'cd app && yarn install',
            setup = function()
                vim.g.mkdp_filetypes = { "markdown" }
            end,
            ft = { "markdown" },
        })

        use('lilydjwg/colorizer')

        use('tpope/vim-commentary')

        use('ryanoasis/vim-devicons')

        use('kyazdani42/nvim-web-devicons')

        use('romgrk/barbar.nvim')

        use('mattn/emmet-vim')

        use('lervag/vimtex')

        use('puremourning/vimspector')

        use({
            'turbio/bracey.vim',
            run = 'npm install --prefix server',
        })

        use({
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate',
        })

        use({
            'dsznajder/vscode-es7-javascript-react-snippets',
            run = 'yarn install --frozen-lockfile && yarn compile',
        })

        use('tpope/vim-surround')

        use('bfrg/vim-cpp-modern')

        use('vim-python/python-syntax')

        use('junegunn/goyo.vim')

        use({
            'Yggdroot/indentLine',
            config = function ()
                require('imaphatduc.plugins.indentLine')
            end
        })

        use('nvim-lua/plenary.nvim')

        use('nvim-telescope/telescope.nvim')

        -- use('luochen1990/rainbow')

        if packer_bootstrap then
            require('packer').sync()
        end
    end
)

