require("config.base")
require("config.lsp")
require("config.options")

if vim.g.vscode then
  require("config.vscode")
else
  require("config.onlynvim")
end
