return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            'nvim-lua/plenary.nvim'
        }
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        }
    },
    vim.api.nvim_set_keymap('n', '<S-t>', ':Neotree<CR>', { noremap = true, silent = true }),
}
