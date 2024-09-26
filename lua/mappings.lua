vim.g.mapleader = " "

local set = vim.keymap.set

-- set("n", "q", ":wa<CR>", {silent = true })
set("n", "<leader>l", ":wincmd l<CR>", {silent = true })
set("n", "<leader>k", ":wincmd k<CR>", {silent = true })
set("n", "<leader>j", ":wincmd j<CR>", {silent = true })
set("n", "<leader>h", ":wincmd h<CR>", {silent = true })
set("n", "<leader>c", ":bd<CR>", {silent = true })
set("i", "<A-j>", "<ESC>", {silent = true })
set("n", "<leader>t", ":Telescope find_files hidden=true<CR>", {silent = true })
set("n", "<leader>b", ":Telescope buffers<CR>", {silent = true })
set("n", ",", ":noh<CR>", { silent = true })
set("n", "gd", "<Plug>(coc-definition)", { silent = true })
set("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
set("n", "gi", "<Plug>(coc-implementation)", { silent = true })
set("n", "gr", "<Plug>(coc-references)", { silent = true })
set("n", "<C-c>", ":Commentary<CR>", { silent = true })
set("n", "<leader>f", ":Oil<CR>", { silent = true })
set("n", "0", "^")

-- show docs when K
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
set("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})
