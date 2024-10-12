return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "prisma",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
    run = ":TSUpdate",
  },
}
