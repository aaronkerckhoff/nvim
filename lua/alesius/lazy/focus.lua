function focusmap(direction)
    vim.keymap.set("n", "<leader>"..direction, function()
        require("focus").split_command(direction)
    end)
end

return {
    "nvim-focus/focus.nvim",
    version = "*",
    vim.keymap.set("n", "<c-s>", function()
        require("focus").split_nicely()
    end),

    focusmap("h"),
    focusmap("j"),
    focusmap("k"),
    focusmap("l"),
}
