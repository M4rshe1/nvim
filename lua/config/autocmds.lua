-- config/autocmds.lua
local function augroup(name)
  return vim.api.nvim_create_augroup(name, {
    clear = true,
  })
end

vim.api.nvim_create_autocmd({ "BufRead", "BufEnter", "BufNewFile" }, {
  group = augroup("syntax_on"),
  pattern = "*",
  callback = function(event)
    local filetype = vim.bo[event.buf].filetype

    if filetype == "bigfile" then
      print("Bigfile detected, syntax highlighting disabled.")
      return
    end

    vim.cmd("syntax on")
    -- print("Syntax enabled for:", vim.fn.expand("%:p"))
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup("syntax_on"),
  pattern = "*",
  callback = function(event)
    local filetype = vim.bo[event.buf].filetype

    if filetype == "bigfile" then
      print("Bigfile detected in FileType event, syntax highlighting disabled.")
      return
    end

    vim.cmd("syntax on")
    -- print("Syntax enabled for (FileType):", vim.fn.expand("%:p"))
  end,
})

vim.cmd([[
  autocmd BufRead,BufNewFile *.prisma set filetype=prisma
]])

vim.api.nvim_create_autocmd("BufRead", {
  group = augroup("filetype"),
  pattern = "*",
  callback = function(event)
    local filename = vim.fn.expand("%:t")
    local filetype = vim.bo[event.buf].filetype

    if filetype == "bigfile" then
      print("Bigfile detected in BufRead event, syntax highlighting disabled.")
      return
    end

    if filename == "bigfile" then
      vim.bo[event.buf].filetype = "bigfile"
      print("Bigfile detected in BufRead event, syntax highlighting disabled.")
    end
  end,
})
