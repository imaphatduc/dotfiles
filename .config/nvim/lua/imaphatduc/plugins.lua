local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

-- reloads Neovim after whenever you save plugins.lua
vim.cmd([[
    augroup packer_user_config
      autocmd!
     autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup END
]])

return require('packer').startup(
    function (use)
        use('wbthomason/packer.nvim')

        -- use('dense-analysis/ale')

        use {
            "nvim-neo-tree/neo-tree.nvim",
            branch = "v2.x",
            requires = {
                "nvim-lua/plenary.nvim",
                "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
                "MunifTanjim/nui.nvim",
            },
            config = function ()
                require('imaphatduc.plugins.neotree')
            end
        }

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
            setup = function ()
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
            packer.sync()
        end
    end
)

