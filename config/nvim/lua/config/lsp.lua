vim.api.nvim_create_autocmd("FileType",{
  desc = "launch lua-language-server",
  pattern = "lua" ,
  callback = function()
    vim.lsp.start({
      name = "lua-lsp",
      cmd = {"lua-language-server"},
      root_dir = vim.fs.dirname(vim.fs.find(".luarc.json",{ upward = true})[1])
    })
  end
})
vim.api.nvim_create_autocmd("FileType",{
  desc = "launch terraform-lunguage-server",
  pattern = "tf",
  callback = function()
    vim.lsp.start({
      name = "terraform-lsp",
      cmd = {"terraform-lsp"}
    })
  end
})
