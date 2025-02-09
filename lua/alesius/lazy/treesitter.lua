return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "java", "astro", "html", "css", "javascript", "typescript", "rust", "svelte" },
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { "latex" },
            },
            indent = { enable = true },
        })

        require("nvim-ts-autotag").setup({
            opts = {
                enable_close = true,
                enable_rename = true,
                enable_close_on_slash = true,
            },
        })
    end
}
