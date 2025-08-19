-- Install lazylazy
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system {
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable',
		lazypath,
	}
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {

	-- Color scheme
	--  { 'catppuccin/nvim', as = 'catppuccin' },

	-- Fuzzy Finder (files, lsp, etc)
	{ 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },

	-- File tree
	{
		'nvim-tree/nvim-tree.lua',
		version = '*',
		lazy = false,
		requires = {
			'nvim-tree/nvim-web-devicons',
		},
		config = function()
			require('nvim-tree').setup {}
		end,
	},

	-- Save and load buffers (a session) automatically for each folder
	{
		'rmagatti/auto-session',
		config = function()
			require('auto-session').setup {
				log_level = 'error',
				auto_session_suppress_dirs = { '~/', '~/Downloads' },
			}
		end,
	},

	-- Comment code
	{
		'terrortylor/nvim-comment',
		config = function()
			require('nvim_comment').setup { create_mappings = false }
		end,
	}
}
