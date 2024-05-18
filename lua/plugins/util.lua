local utils = {
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons"}, opts = function() return require("configs.telescope") end,
	config = function(_, opts) 
	local telescope = require("telescope")
	telescope.setup(opts)
        end},
	"jiangmiao/auto-pairs",
	{ "neoclide/coc.nvim", branch = "release" },
	"vim-airline/vim-airline",
	"kien/ctrlp.vim",
	"mg979/vim-visual-multi",
	"folke/which-key.nvim",
	"tpope/vim-surround",
	"tpope/vim-commentary",
	{ "stevearc/oil.nvim", config = function ()
		local oil = require('oil')
		oil.setup()
	end },
        -- { "nvimdev/galaxyline.nvim", branch = "main", config = function ()
            -- require('configs.galaxy')
        -- end }
}
return utils
