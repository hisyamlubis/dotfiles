return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 
	      'nvim-lua/plenary.nvim',
	      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

      },

      config = function()
	local telescope = require("telescope")
	local actions = require("telescope.actions")

	telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			}
		}
	}
	})

	telescope.load_extension("fzf");
      end
    }
