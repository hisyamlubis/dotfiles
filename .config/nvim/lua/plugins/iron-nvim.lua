return {
    "Vigemus/iron.nvim",
    config = function()
        local iron = require("iron.core")

        iron.setup({
            config = {
                -- Add any additional REPL definitions here
                repl_definition = {
                    python = {
                        command = { "ipython" },
                    },
                },
                -- How the REPL should be opened
                repl_open_cmd = "belowright split",
            },
            keymaps = {
                send_motion = "<leader>sc", -- Send visual selection
                visual_send = "<leader>sc", -- Send visually selected lines
                send_file = "<leader>sf", -- Send the entire file
                send_line = "<leader>sl", -- Send the current line
                send_mark = "<leader>sm", -- Send marked area
                mark_motion = "<leader>mc", -- Mark a motion
                mark_visual = "<leader>mc", -- Mark a visually selected area
                remove_mark = "<leader>md", -- Remove mark
                cr = "<leader>s<cr>", -- Execute code
                interrupt = "<leader>s<space>", -- Interrupt the REPL
                exit = "<leader>sq", -- Exit the REPL
                clear = "<leader>cl", -- Clear the REPL
            },
            highlight = {
                italic = true,
            },
            ignore_blank_lines = true, -- Ignore blank lines when sending code
        })
    end,
}
