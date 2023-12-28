print("welcome to vscode")
local vscode = require('vscode-neovim')

vim.api.nvim_create_user_command("Memo", function(opts)
  vscode.notify("success", "hello world")
  vscode.call()
  vim.cmd("e " .. "~/_/memo/memo.md")
end, {})
