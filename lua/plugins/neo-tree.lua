return {{
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        filesystem = {
            follow_current_file = {
                enabled = true
            },
            use_libuv_file_watcher = true,
            preview = false,
            filtered_items = {
                visible = true
            }
        }
    }
}}
