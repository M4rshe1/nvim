-- config/autocmds.lua
local function augroup(name)
    return vim.api.nvim_create_augroup(name, {
        clear = true
    })
end

vim.api.nvim_create_autocmd({"BufRead", "BufEnter"}, {
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
    end
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
    end
})

