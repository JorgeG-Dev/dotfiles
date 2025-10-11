return {
	"lewis6991/gitsigns.nvim",
	keys = {
		{ "<leader>gp", "<cmd>:Gitsigns preview_hunk<cr>", desc = "Gitsigns preview current hunk" },
	},
	config = function()
		require("gitsigns").setup()
	end,
}
