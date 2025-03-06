return {
    {
        'rcarriga/nvim-notify',
        config = function()
            require("notify").setup({
                -- Configuration options
                stages = "fade_in_slide_out",
                timeout = 3000,
                background_colour = "#ffffff",
                icons = {
                },
            })
        end
    },
}