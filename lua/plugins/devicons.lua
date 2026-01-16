return {
    {
        "nvim-tree/nvim-web-devicons",
        lazy = false, -- load at startup
        config = function()
            require("nvim-web-devicons").setup()
        end
    },


}
