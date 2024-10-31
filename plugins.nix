#plugins.nix
{pkgs, ...}:
with pkgs.vimPlugins; [
  nvim-treesitter.withAllGrammars
  telescope-nvim
  toggleterm-nvim # better terminal management
  nvim-lspconfig
  rainbow-delimiters-nvim
  nvim-treesitter-context
  playground # treesitter playground
  nvim-treesitter-textobjects # jump around and select based on syntax (class, function, etc.)
  nvim-treesitter-context # keep current block header (func defn or whatever) on first line
  nvim-cmp # generic autocompleter
  cmp-nvim-lsp # use lsp as source for completions
  cmp-nvim-lua # makes vim config editing better with completions
  cmp-buffer # any text in open buffers
  cmp-path # complete paths
  cmp-cmdline # completing in :commands
  cmp-emoji # complete :emojis:
  cmp-nvim-lsp-signature-help # help complete function call by showing args
  cmp-npm # complete node packages in package.json
  nvim-autopairs # balances parens as you type
  nvim-ts-autotag # balance or rename html
  rose-pine
  lsp-zero-nvim
  undotree
  fugitive
  mason-nvim
  mason-lspconfig-nvim
]
