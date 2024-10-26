-- Mapping the Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Convenient save and quit
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<leader>q", ":q<cr>")

-- Bufferline
vim.keymap.set("n", "<leader>bn", ":BufferLineCycleNext<cr>")
vim.keymap.set("n", "<leader>bp", ":BufferLineCyclePrev<cr>")
