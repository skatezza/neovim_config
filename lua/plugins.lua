local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- UI enhancements
  use { 'catppuccin/nvim', as = "catppuccin" }
  use 'nvim-lualine/lualine.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'
  use { 'ibhagwan/fzf-lua', requires = { 'nvim-tree/nvim-web-devicons' } }
  use 'lewis6991/gitsigns.nvim'
  use 'folke/zen-mode.nvim'
  use 'terryma/vim-smooth-scroll'

  -- Language support and syntax highlighting
  use 'pangloss/vim-javascript'
  use 'evanleck/vim-svelte'
  use 'othree/html5.vim'
  use 'fatih/vim-go'
  use 'digitaltoad/vim-pug'
  use 'jlcrochet/vim-razor'
  use 'vim-crystal/vim-crystal'

  -- LSP, Autocomplete, and Snippets
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use 'onsails/lspkind-nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use { 'JoosepAlviste/nvim-ts-context-commentstring' }
  use { 'numToStr/Comment.nvim', requires = 'JoosepAlviste/nvim-ts-context-commentstring' }

  -- Git integration
  use 'tpope/vim-fugitive'
  use 'dinhhuy258/git.nvim'

  -- File and project navigation
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.4', requires = { 'nvim-lua/plenary.nvim' } }
  use 'nvim-telescope/telescope-fzf-native.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use { 'nvim-tree/nvim-tree.lua', requires = 'nvim-tree/nvim-web-devicons' }

  -- Miscellaneous plugins
  use 'mbbill/undotree'
  use 'dstein64/vim-startuptime'
  use 'nanotee/zoxide.vim'
  use 'mg979/vim-visual-multi'
  use { 'iamcco/markdown-preview.nvim', run = function() vim.fn["mkdp#util#install"]() end, }

  -- Formatting and code quality
  use {
    'prettier/vim-prettier',
    run = 'yarn install --frozen-lockfile --production',
    ft = { 'javascript', 'typescript', 'css', 'scss', 'json', 'graphql', 'markdown', 'vue', 'html' }
  }

  -- Additional utilities and enhancements
  use 'subnut/vim-iawriter'
  use 'junegunn/limelight.vim'
  use 'junegunn/fzf.vim'
  use 'tpope/vim-repeat'
  use 'tpope/vim-commentary'
  use 'tpope/vim-endwise'
  use 'Shougo/unite.vim'
end)
