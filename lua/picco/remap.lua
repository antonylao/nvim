vim.keymap.set("n", "<C-b>", vim.cmd.Ex)
vim.keymap.set({ "i", "v" }, "kj", "<Esc>")

-- move lines up and down in vmode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

--keep cursor at the same place with this command
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in middle with middle page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- when searching terms, cursors in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- copy paste clipboard: cant make it work
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<leader>p", "\"+p")

-- Q is bullshit so disable it
vim.keymap.set("n", "Q", "<nop>")

-- for moving between projects (needs tmux: dont understand how it works)
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
