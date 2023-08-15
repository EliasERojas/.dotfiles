local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
	"neovim/nvim-lspconfig",
	{"nvim-treesitter/nvim-treesitter", cmd = "TSUpdate" },
    -- completion
	"saadparwaiz1/cmp_luasnip",
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
	"nvim-lua/plenary.nvim",
	"jose-elias-alvarez/null-ls.nvim",
    -- debug
	"mfussenegger/nvim-dap",
    -- packaging
	{"williamboman/mason.nvim", cmd = "MasonUpdate"},
	"williamboman/mason-lspconfig.nvim",
    -- fzf
    'junegunn/fzf.vim',
    {'junegunn/fzf', build="./install --bin"},
    -- completion
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
})
