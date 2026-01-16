return {
    {
        "jfgordon2/vsterm.nvim",
        opt = {
            -- Optional configuration
            height = 0.3, -- 30% of window height
            default_name = "Terminal %d",
            list_width = 30,
        },
        config = function()
        require("vsterm").setup({
            -- Height of the terminal window (percentage of total height)
            height = 0.3,
  
            -- Default name format for new terminals
            default_name = "Terminal %d",
  
            -- Shell to use (nil for default)
            shell = "bash",
  
            -- Width of the terminal list (in characters)
            list_width = 25,
  
            -- Enable mouse support for terminal list
            enable_mouse = true,
  
            -- Key prefix for number-based terminal switching
            -- Set to nil to disable number shortcuts
            number_prefix = "<leader>v",
  
            -- Custom key mappings
            mappings = {
                toggle = "<leader>vv",
                new = "<leader>vn",
                kill = "<leader>vk",
                rename = "<leader>vr",
            },
        })
        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
            vim.cmd("VSTermToggle")
        end
        })

        end
    },
}
