return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        stylua = {
          -- This removes the --respect-ignores argument from the command
          prepend_args = function()
            return {}
          end,
        },
      },
      formatters_by_ft = {
        -- Set fish to an empty table to disable its formatters
        fish = {},
      },
    },
  },
}
