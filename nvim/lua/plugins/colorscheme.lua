-- return {
--   "catppuccin/nvim",
--   lazy = true,
--   name = "catppuccin",
--   opts = {
--     lsp_styles = {
--       underlines = {
--         errors = { "undercurl" },
--         hints = { "undercurl" },
--         warnings = { "undercurl" },
--         information = { "undercurl" },
--       },
--     },
--     integrations = {
--       aerial = true,
--       alpha = true,
--       cmp = true,
--       dashboard = true,
--       flash = true,
--       fzf = true,
--       grug_far = true,
--       gitsigns = true,
--       headlines = true,
--       illuminate = true,
--       indent_blankline = { enabled = true },
--       leap = true,
--       lsp_trouble = true,
--       mason = true,
--       mini = true,
--       navic = { enabled = true, custom_bg = "lualine" },
--       neotest = true,
--       neotree = true,
--       noice = true,
--       notify = true,
--       snacks = true,
--       telescope = true,
--       treesitter_context = true,
--       which_key = true,
--     },
--   },
--   specs = {
--     {
--       "akinsho/bufferline.nvim",
--       optional = true,
--       opts = function(_, opts)
--         if (vim.g.colors_name or ""):find("catppuccin") then
--           opts.highlights = require("catppuccin.special.bufferline").get_theme()
--         end
--       end,
--     },
--   },
-- }

return {
  {
    "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      integrations = {
        neotree = true, -- This makes Neo-tree background match the theme's sidebar color
        bufferline = true, -- This applies Catppuccin's specific tab highlights
        treesitter = true,
        notify = true,
      },
      -- If you want Neo-tree and the editor to have the EXACT same background color:
      custom_highlights = function(colors)
        return {
          -- Forces Neo-tree to use the main 'Base' color instead of 'Mantle'
          NeoTreeNormal = { bg = colors.base },
          NeoTreeNormalNC = { bg = colors.base },
          -- Matches the vertical separator line
          WinSeparator = { fg = colors.surface0, bg = colors.none },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
