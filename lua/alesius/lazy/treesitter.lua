return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "java", "astro", "html", "css", "javascript", "typescript" },
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { "latex" },
            },
            indent = { enable = true },
        })
    end
}
