vim.g.mapleader = ";"

vim.keymap.set("i", "<leader><leader>", "<Esc>")
vim.keymap.set("n", "<leader>pv", ":Ex<CR>", { silent = true, noremap = true })

vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>qq", ":q<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>qf", ":q!<CR>", { silent = true, noremap = true })

vim.keymap.set("n", "<leader>so", ":so<CR>", { silent = true, noremap = true })

-- buffer mappings
-- buffer toggle
vim.keymap.set("n", "<leader>bb", "<C-^>", { silent = true, noremap = true })

-- next buffer
vim.keymap.set("n", "<leader>bn", ":bn<CR>", { silent = true, noremap = true })

-- previous buffer
vim.keymap.set("n", "<leader>bp", ":bp<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<C-h>", ":bp<CR>", { silent = true, noremap = true })

-- close buffer
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { silent = true, noremap = true })

-- kill buffer
vim.keymap.set("n", "<leader>bk", ":bd!<CR>", { silent = true, noremap = true })

-- list buffers
vim.keymap.set("n", "<leader>bl", ":ls<CR>", { silent = true, noremap = true })

-- list and select buffer
vim.keymap.set("n", "<leader>bg", ":ls<CR>:buffer<Space>", { silent = true, noremap = true })

-- horizontal split with new buffer
vim.keymap.set("n", "<leader>bh", ":new<CR>", { silent = true, noremap = true })

-- vertical split with new buffer
vim.keymap.set("n", "<leader>bv", ":vnew<CR>", { silent = true, noremap = true })

-- clear search highlighting
vim.keymap.set("n", "<C-L>", ":nohlsearch<CR><C-L>", { silent = true, noremap = true })

-- keyboard navigation between buffers
vim.keymap.set("n", "<leader>h", "<C-w>h", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>j", "<C-w>j", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>k", "<C-w>k", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>l", "<C-w>l", { silent = true, noremap = true })

-- Terminal mappings
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { silent = true, noremap = true })
vim.keymap.set("t", "<A-h>", "<C-\\><C-n><C-w>h", { silent = true, noremap = true })
vim.keymap.set("t", "<A-j>", "<C-\\><C-n><C-w>j", { silent = true, noremap = true })
vim.keymap.set("t", "<A-k>", "<C-\\><C-n><C-w>k", { silent = true, noremap = true })
vim.keymap.set("t", "<A-l>", "<C-\\><C-n><C-w>l", { silent = true, noremap = true })
vim.keymap.set("t", "<C-x>", "<C-\\><C-n><C-w>q", { silent = true, noremap = true })

vim.keymap.set("n", "<leader>tt", ":terminal", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>tv", ":vnew<CR>:terminal<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>th", ":new<CR>:terminal<CR>", { silent = true, noremap = true })

-- theprimeagen mappings - add comments later
-- move the selection below or above. Also takes care of indenting
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without losing the currently copied item
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy selected text (Y for whole line) to the system clipboard (can paste it only outside  nvim)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete line without copying it to the clipboarding (previous copy will not be lost)
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
-- format the current buffer using lsp
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- replace all occurrences of the word under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
