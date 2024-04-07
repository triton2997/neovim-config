vim.keymap.set("n", "<F2>", ":NERDTreeToggle<CR>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>nf", ":NERDTreeFind<CR>", {silent = true, noremap = true})

vim.api.nvim_create_autocmd("VimEnter", {
    command = "NERDTree"
})

vim.api.nvim_create_autocmd("BufEnter", {
    command = "if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif"
})
