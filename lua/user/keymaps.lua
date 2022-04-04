local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<M-j>", "<C-w>j", opts)
keymap("n", "<M-k>", "<C-w>k", opts)
keymap("n", "<M-l>", "<C-w>l", opts)
keymap("n", "<M-h>", "<C-w>h", opts)

keymap("n", "<C-f>", ":NvimTreeToggle<CR>", opts)

keymap("n", "<M-Up>", ":resize -2<CR>", opts)
keymap("n", "<M-Down>", ":resize +2<CR>", opts)
keymap("n", "<M-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<M-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

keymap("i", "jk", "<Esc>", opts)

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

keymap("n", "<C-]>", ":CommentToggle<CR>", opts)
keymap("v", "<C-]>", ":CommentToggle<CR>", opts)

-- keymap("n", "<C-t>", ":ToggleTerm<CR>", opts)
-- keymap("t", "<C-t>", "<C-\\><C-n>:ToggleTerm<CR>", opts)

