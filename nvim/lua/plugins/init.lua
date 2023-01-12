local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
  vim.cmd [[packadd packer.nvim]]
end

-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  --use 'shaunsingh/nord.nvim'
  use 'folke/tokyonight.nvim'

  use { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use { 'windwp/nvim-ts-autotag' }
  use { 'p00f/nvim-ts-rainbow' }
  use { 'windwp/nvim-autopairs' }
  use { 'folke/which-key.nvim' }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = {
      {'nvim-lua/plenary.nvim', "nvim-telescope/telescope-live-grep-args.nvim"}
    },
    config = function()
      require("telescope").load_extension("live_grep_args")
    end
  }

  -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'natecraddock/telescope-zf-native.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use 'onsails/lspkind.nvim'
  use 'norcalli/nvim-colorizer.lua'

  -- will need to run :PackerCompile if changes mad eto gitsigns
  -- usage here https://github.com/lewis6991/gitsigns.nvim
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    config = function()
      require('gitsigns').setup{
        current_line_blame = true,
        signs = {
          add          = { hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
          change       = { hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
          delete       = { hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
          topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
          changedelete = { hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
          untracked    = { hl = 'GitSignsAdd'   , text = '┆', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
        },
        -- signs = {
        --   add = { text = '+' },
        --   change = { text = '~' },
        --   delete = { text = '_' },
        --   topdelete = { text = '‾' },
        --   changedelete = { text = '~' },
        -- },
      }
    end
  }

  use 'lukas-reineke/indent-blankline.nvim'
  use 'terrortylor/nvim-comment'
  use 'akinsho/toggleterm.nvim'
  use { 'gelguy/wilder.nvim' } -- neovim command mode autocomplete
  use 'nvim-tree/nvim-web-devicons'

  use {
  'lukoshkin/trailing-whitespace',
  config = function ()
    require'trailing-whitespace'.setup {
      patterns = { '\\s\\+$' },
      palette = { markdown = 'VioletRed' },
      default_color = 'VioletRed',
    }
  end
}

end)

