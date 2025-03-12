vim.api.nvim_set_var("loaded_netrw", 1)
vim.api.nvim_set_var("loaded_netrwPlugin", 1)
require("config.lazy")
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.g.mapleader = " "
-- キーバインド
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true })
vim.keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true })
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "YY", "ggVGy", { noremap = true })

vim.opt.clipboard = "unnamed,unnamedplus"
