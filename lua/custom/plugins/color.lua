return {
	'ebadfd/cozy-bear-nvim',
	name = 'cozy-bear',
	priority = 1000,
	opts = {
		disable_background = true
	},
	config = function()
		vim.cmd.colorscheme 'cozy-bear'

		function ColorMyPencils(color)
			color = color or "cozy-bear"
			vim.cmd.colorscheme(color)

			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end

		ColorMyPencils()
	end,
}
