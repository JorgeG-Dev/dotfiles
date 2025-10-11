return {
	"sindrets/diffview.nvim",
	keys = {
		{ "<leader>do", "<cmd>:DiffviewOpen<cr>", desc = "Diffview open current changes in working directory" },
		{ "<leader>dh", "<cmd>:DiffviewFileHistory<cr>", desc = "Diffview file history in working directory" },
		{ "<leader>df", "<cmd>:DiffviewFileHistory %<cr>", desc = "Diffview open current file history" },
		{ "<leader>dc", "<cmd>:DiffviewClose<cr>", desc = "Diffview close diffview" },
	},
}
