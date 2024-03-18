print("welcome to onlynvim")

vim.api.nvim_create_user_command("Memo", function(opts)
  vim.cmd("e " .. "~/_/memo/memo.md")
end, {})
vim.keymap.set('n', 'sh',':wincmd h<CR>')
vim.keymap.set('n', 'sj',':wincmd j<CR>')
vim.keymap.set('n', 'sk',':wincmd k<CR>')
vim.keymap.set('n', 'sl',':wincmd l<CR>')
