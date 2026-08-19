local vks = vim.keymap.set

-- Esc
vks({ "i", "n", "s" }, "<esc>", function()
    vim.cmd("noh")
    return "<esc>"
end, { expr = true, desc = "Escape and Clear hlsearch" })

-- Buffer
-- move
vks("n", "H", "<cmd>bprev<CR>", { silent = true, desc = "Move to Prev Buffer (←)"})
vks("n", "L", "<cmd>bnext<CR>", { silent = true, desc = "Move to Next Buffer (→)"})
vks("n", "[b", "<cmd>bprev<CR>", { silent = true, desc = "Move to Prev Buffer (←)"})
vks("n", "]b", "<cmd>bnext<CR>", { silent = true, desc = "Move to Next Buffer (→)"})
vks("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to other Buffer" })
vks("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to other Buffer" })
-- other
vks("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })


-- Pane
-- move
vks("n", "<C-h>", "<C-w>h", { silent = true, desc = "Move to left Pane" })
vks("n", "<C-l>", "<C-w>l", { silent = true, desc = "Move to right Pane" })
vks("n", "<C-k>", "<C-w>k", { silent = true, desc = "Move to up Pane" })
vks("n", "<C-j>", "<C-w>j", { silent = true, desc = "Move to down Pane" })
-- resize
vks("n", "<C-Up>", "<cmd>resize +1<CR>", { silent = true })
vks("n", "<C-Down>", "<cmd>resize -1<CR>", { silent = true })
vks("n", "<C-Left>", "<cmd>vertical resize -1<CR>", { silent = true })
vks("n", "<C-Right>", "<cmd>vertical resize +1<CR>", { silent = true })
-- sprit
vks("n", "<leader>|", "<cmd>vsplit<cr>", { silent = true, desc = "Vertical sprit" })
vks("n", "<leader>-", "<cmd>split<cr>", { silent = true, desc = "Horizontal sprit" })
-- other
vks("n", "<leader>wd", "<C-W>c", { silent = true, desc = "Delete Window" })


-- Tab
vks("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
vks("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
vks("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
vks("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
vks("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vks("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
vks("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Prev Tab" })


-- Indent
vks("v", "<", "<gv")
vks("v", ">", ">gv")


-- Keymap like non-vim
vks({ "i", "x", "n", "s" }, "<C-n>", "<cmd>new<cr>", { desc = "New File" })
vks({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr>", { desc = "Save File" })
vks({ "i", "x", "n", "s" }, "<C-q>", "<cmd>q<cr>", { desc = "Quit Vim" })


-- Lazy
vks("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })


