return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            enabled = true
        }, {"nvim-telescope/telescope-file-browser.nvim", enabled = true}
    },
    branch = "0.1.x",
}

