return {
    "Olical/conjure",
    config = function()
        -- Disable default key mappings if necessary
        vim.g["conjure#mapping#eval_current_form"] = false
        vim.g["conjure#mapping#eval_visual"] = false

        -- Set custom key mappings
        vim.api.nvim_set_keymap("n", "<leader>ce", ":ConjureEval<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("v", "<leader>ce", ":ConjureEval<CR>", { noremap = true, silent = true })

        -- Optionally, customize localleader mappings
        vim.api.nvim_set_keymap("n", "<localleader>cc", ":ConjureConnect<CR>", { noremap = true, silent = true })
    end,
}
