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
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
	"nvim-lua/plenary.nvim",
	"jose-elias-alvarez/null-ls.nvim",
	"mfussenegger/nvim-dap",
	{"williamboman/mason.nvim", cmd = "MasonUpdate"},
	"williamboman/mason-lspconfig.nvim",
    -- theme
    "rebelot/kanagawa.nvim"
})
