return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require('catppuccin').setup({
            transparent_background = false,
            no_italic = true,
            color_overrides = {
                all = {
                    base = '#181818'
                }
            }
        });

        vim.cmd("colorscheme catppuccin")
    end
}
