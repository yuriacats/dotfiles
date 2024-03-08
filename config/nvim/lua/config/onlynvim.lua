print("welcome to onlynvim")

vim.api.nvim_create_user_command("Memo", function(opts)
  vim.cmd("e " .. "~/_/memo/memo.md")
end, {})
