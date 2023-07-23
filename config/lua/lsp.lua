local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  -- Replace these with whatever servers you want to install
  'tsserver',
  'eslint',
  'rust_analyzer'
})

lsp.setup_servers({'rust_analyzer'})


lsp.setup()
