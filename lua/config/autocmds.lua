-- config/autocmds.lua
-- Define the augroup function
local function augroup(name)
    return vim.api.nvim_create_augroup(name, {
        clear = true
    })
end

-- Create an autocommand group for syntax
vim.api.nvim_create_autocmd("BufRead", {
    group = augroup("syntax_on"),
    callback = function(event)
        if vim.bo[event.buf].filetype == "bigfile" then
            return
        end
        vim.cmd("syntax on")
        -- print("Syntax enabled for:", vim.fn.expand("%:p"))
    end
})
