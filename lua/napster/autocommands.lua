local aucmd = vim.api.nvim_create_autocmd

aucmd("InsertCharPre", {
    callback = function()
        if vim.v.char == " " then
            vim.keymap.set("i", "<tab>", function()
                pcall(vim.keymap.del, "i", "<tab>")
                vim.api.nvim_input("<bs>")
                vim.defer_fn(function()
                    require("luasnip").expand_or_jump()
                end, 1)
            end, {
                noremap = true,
                silent = true,
            })
            vim.defer_fn(function()
                pcall(vim.keymap.del, "i", "<tab>")
            end, vim.o.timeoutlen)
            vim.keymap.set("i", "<s-tab>", function()
                pcall(vim.keymap.del, "i", "<s-tab>")
                vim.api.nvim_input("<bs>")
                vim.defer_fn(function()
                    require("luasnip").expand_or_jump()
                end, 1)
            end, {
                noremap = true,
                silent = true,
            })
            vim.defer_fn(function()
                pcall(vim.keymap.del, "i", "<s-tab>")
            end, vim.o.timeoutlen)
            vim.keymap.set("i", " ", function()
                pcall(vim.keymap.del, "i", " ")
                vim.api.nvim_input("<bs><right>")
            end, {
                noremap = true,
                silent = true,
            })
            vim.defer_fn(function()
                pcall(vim.keymap.del, "i", " ")
            end, vim.o.timeoutlen)
        else
            pcall(vim.keymap.del, "i", " ")
            pcall(vim.keymap.del, "i", "<tab>")
        end
    end,
})
