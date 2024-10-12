return {
	{
		"vimwiki/vimwiki",
		event = "BufEnter *.md",
		keys = { "<leader>ww", "<leader>wt" },
		init = function()
			vim.g.vimwiki_global_ext = 0 -- don't treat all md files as vimwiki

			vim.g.vimwiki_folding = ""
			vim.g.vimwiki_list = {
				{
					path = "~/Developer/personal/Wiki",
					syntax = "markdown",
					ext = ".md",
				},
			}
			vim.g.vimwiki_ext2syntax = {
				[".md"] = "markdown",
				[".markdown"] = "markdown",
				[".mdown"] = "markdown",
			}
		end,
		ft = 'markdown'
	},
	{
		"ElPiloto/telescope-vimwiki.nvim",
		config = function()
			require("telescope").load_extension "vimwiki"

			-- vim.keymap.set('n', '<leader>vw', require('telescope').extensions.vimwiki.vimwiki(),
			--		{ desc = '[V]im [W]Wiki' })
			--	vim.keymap.set('n', '<leader>vg', require('telescope').extensions.vw.live_grep(), { desc = '[V]Vim [V]Grep' })
		end,
		lazy = true,
		ft = 'vimwiki'
	},
}
