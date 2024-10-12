-- nvim-tree keymaps
vim.keymap.set("n", "<C-b>", "<Cmd>Neotree toggle<CR>")

-- nvim-cmp keymaps
vim.keymap.set("n", "<A-S-f>", "<Cmd>Format<CR>")

-- current file
vim.keymap.set("n", "<C-w>", "<Cmd>bd<CR>")
vim.keymap.set("n", "<C-q>", "<Cmd>q<CR>")
vim.keymap.set("n", "<C-s>", "<Cmd>w<CR>")
vim.keymap.set("n", "<C-S-s>", "<Cmd>wa<CR>")
vim.keymap.set("n", "<C-S-q>", "<Cmd>qa<CR>")
vim.keymap.set("n", "<C-S-w>", "<Cmd>wqa<CR>")
vim.keymap.set("n", "<C-S-x>", "<Cmd>xa<CR>")
vim.keymap.set("n", "<C-x>", "<Cmd>x<CR>")
vim.keymap.set("n", "<C-z>", "<Cmd>undo<CR>")
vim.keymap.set("n", "<C-S-z>", "<Cmd>redo<CR>")

vim.api.nvim_set_keymap("n", "k", "j", {
  noremap = true,
  silent = true,
})
vim.api.nvim_set_keymap("n", "j", "k", {
  noremap = true,
  silent = true,
})

-- Switch to the next file
vim.keymap.set("n", "<C-n>", "<Cmd>bn<CR>")
-- Switch to the previous file
vim.keymap.set("n", "<C-p>", "<Cmd>bp<CR>")
