if true then
  return {}
end
return {
  {
    "folke/trouble.nvim",
    opts = {
      use_diagnostic_signs = true,
    },
  },
  {
    "folke/trouble.nvim",
    enabled = false,
  },
  {
    "prisma/vim-prisma",
    ft = "prisma",
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    opts = function(_, opts)
      table.insert(opts.sources, {
        name = "emoji",
      })
    end,
    sources = {
      {
        name = "buffer",
      },
      {
        name = "nvim_lsp",
      },
      {
        name = "emoji",
      },
      {
        name = "copilot",
      },
    },
  },
  {
    import = "lazyvim.plugins.extras.lang.typescript",
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, "😄")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      return {}
    end,
  },
  {
    import = "lazyvim.plugins.extras.ui.mini-starter",
  },
  {
    import = "lazyvim.plugins.extras.lang.json",
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "stylua", "shellcheck", "shfmt", "flake8" },
    },
  },
}
