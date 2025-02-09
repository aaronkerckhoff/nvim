return {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    lazy = false,
    config = function()
        require("refactoring").setup()
    end,

    vim.keymap.set("v", "<leader>re", "<cmd>Refactor extract<CR>"),
    vim.keymap.set("v", "<leader>rf", "<cmd>Refactor extract_to_file<CR>"),
    vim.keymap.set("v", "<leader>rv", "<cmd>Refactor extract_var<CR>"),
    vim.keymap.set("n", "<leader>rb", "<cmd>Refactor extract_block<CR>"),
    vim.keymap.set("n", "<leader>rbf", "<cmd>Refactor extract_block_to_file<CR>"),
}
