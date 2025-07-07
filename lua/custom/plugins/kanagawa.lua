return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'rebelot/kanagawa.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    ---@diagnostic disable-next-line: missing-fields

    require('kanagawa').setup {
      theme = 'wave',
      overrides = function(colors)
        return { Visual = { bg = colors.palette.fujiGray } }
      end,
    }

    vim.cmd.colorscheme 'kanagawa'
  end,
}
