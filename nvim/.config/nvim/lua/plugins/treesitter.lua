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
				"markdown_inline",
				"gleam",
			},
			highlight = {
				enable = true, -- enable highlighting
			},
			indent = {
				enable = true, -- optional
			},
			auto_install = true,
			sync_install = true,
			-- Add more modules as needed
		})
	end,
}
