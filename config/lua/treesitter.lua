vim.opt.runtimepath:append("$HOME/.local/share/treesitter")

require'nvim-treesitter.configs'.setup {
	parser_install_dir = "$HOME/.local/share/treesitter",
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	--ensure_installed = { "lua", "c", "rust", "kotlin", "java" },
	ensure_installed = {all},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	-- List of parsers to ignore installing (for "all")


	highlight = {
		enable = true,

		-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
		-- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
		-- the name of the parser)
		-- list of language that will be disabled
		-- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
     indent = {
       enable = true,
     },
     autotag = {
       enable = true,
     },
     context_commentstring = {
       enable = true,
     },
     query_linter = {
       enable = true,
     },
     matchup = {
       enable = true,
     },
}

