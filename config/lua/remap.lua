vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>", {})
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)

vim.keymap.set("n", "<leader>gp", vim.cmd.ChatGPT)
vim.keymap.set("n", "<leader>ge", vim.cmd.ChatGPTEditWithInstructions)

vim.api.nvim_set_keymap('n', '<C-j>', '<cmd>wincmd j<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>wincmd k<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>wincmd l<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<cmd>wincmd h<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>qf', ':q!<CR>', { noremap = true, silent = true })

vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.number = true
vim.opt.relativenumber = true
