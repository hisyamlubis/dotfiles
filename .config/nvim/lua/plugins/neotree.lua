return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true, -- Close Neo-tree if it's the last window
            popup_border_style = "rounded", -- Style for pop-up borders
            filesystem = {
                follow_current_file = {
                    enabled = true,
                }, -- Automatically focus the current file
                hijack_netrw_behavior = "open_default", -- "open_default" to replace netrw
            },
            window = {
                position = "left", -- Position of Neo-tree window
                width = 30, -- Width of Neo-tree window
            },
        })
    end,
}
