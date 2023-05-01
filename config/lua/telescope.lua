local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>af', builtin.find_files, {})
vim.keymap.set('n', '<leader>f', builtin.git_files, {})
vim.keymap.set('n', '<leader>st', builtin.live_grep, {})
