vim.wo.number = true
vim.wo.relativenumber = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"

vim.keymap.set('n', '<leader>pv', ':Ex<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = "Clear search highlights" })
vim.keymap.set("v", "<leader>c", ":norm I-- <CR>", { desc = "Comment selected lines" })

vim.keymap.set("i", "jj", "<Esc>", { noremap = false, silent = true })
vim.keymap.set("i", "jk", "<Esc>", { noremap = false, silent = true })
vim.keymap.set("n", "E", "$", { noremap = false, silent = true })
vim.keymap.set("n", "B", "^", { noremap = false, silent = true })
vim.keymap.set("v", "<leader>p", "\"_dP", { noremap = false })
vim.keymap.set("n", "<leader>z", "zz", { noremap = true, silent = true })

vim.diagnostic.config({
  virtual_text = true,
})
diagnostics = {
  globals = { "vim", "describe" }
}
