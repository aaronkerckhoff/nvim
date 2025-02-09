return {
    "nvimtools/none-ls.nvim",
    config = function()
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        local null_ls = require('null-ls')

        null_ls.setup({
            debug = true,
            sources = {
                null_ls.builtins.formatting.prettier.with({
                    extra_args = { "--tab-width", "4" },
                }),
                null_ls.builtins.formatting.black,
                null_ls.builtins.diagnostics.mypy,
            },
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({
                        group = augroup,
                        buffer = bufnr,
                    })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({ bufnr = bufnr })
                        end,
                    })
                end
            end,
        })
    end,
}
