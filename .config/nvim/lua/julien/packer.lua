local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup end
]])

local packer = require("packer")

return packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Core functions for other plugins
	use("nvim-lua/plenary.nvim")

	-- Color scheme
	use("sainnhe/sonokai")

	-- Quick split navigation
	use("christoomey/vim-tmux-navigator")

	-- Maximize/restore current split
	use("szw/vim-maximizer")

	-- Surround motion with ys
	use("tpope/vim-surround")

	-- Comment with gc
	use("numToStr/Comment.nvim")

	-- File explorer
	use("nvim-tree/nvim-tree.lua")

	-- Icons
	use("kyazdani42/nvim-web-devicons")

	-- Status line
	use("nvim-lualine/lualine.nvim")

	-- Fuzzy finder
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- Autocompletion
	use("hrsh7th/nvim-cmp") -- Autocompletion engine
	use("hrsh7th/cmp-buffer") -- Text from buffer
	use("hrsh7th/cmp-path") -- File paths

	-- Snippets
	use("L3MON4D3/LuaSnip") -- Snippet engine
	use("saadparwaiz1/cmp_luasnip") -- Snippets in autocompletion

	-- Manage LSP servers
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- Configure LSP servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp") -- LSP autocompletion
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")

	-- Formatting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- Auto closing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- Git integration
	use("lewis6991/gitsigns.nvim")
	use("tpope/vim-fugitive")

	-- Higlight color codes
	use("norcalli/nvim-colorizer.lua")

	-- File bookmarks
	use("theprimeagen/harpoon")

	-- Navigate JSON files
	use("mogelbrod/vim-jsonpath")

	use({
		"gennaro-tedesco/nvim-jqx",
		ft = { "json", "yaml" },
	})

	use("rest-nvim/rest.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
