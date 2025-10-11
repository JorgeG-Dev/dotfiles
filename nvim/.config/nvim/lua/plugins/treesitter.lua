return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate", -- auto-update parsers after install
	event = { "BufReadPost", "BufNewFile" }, -- lazy-load on file open
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"lua",
				"python",
				"json",
				"bash",
				"rust",
				"c",
				"cmake",
				"cpp",
				"dockerfile",
				"elixir",
				"gitignore",
				"go",
				"latex",
				"make",
				"sql",
				"toml",
				"xml",
			},
			highlight = {
				enable = true, -- enable highlighting
			},
			indent = {
				enable = true, -- optional
			},
			sync_install = false,
			-- Add more modules as needed
		})
	end,
}
