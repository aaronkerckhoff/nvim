return {
    "SirVer/ultisnips",
    dependencies = {
        "honza/vim-snippets",
    },
    config = function()
        vim.g.UltiSnipsExpandTrigger = "<tab>"
        vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
        vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"
    end,
}
