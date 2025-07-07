local builtin = require 'telescope.builtin'

return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  opts = {
    -- delay between pressing a key and opening which-key (milliseconds)
    -- this setting is independent of vim.o.timeoutlen
    delay = 100,
    icons = {
      -- set icon mappings to true if you have a Nerd Font
      mappings = vim.g.have_nerd_font,
      -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
      -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
      keys = vim.g.have_nerd_font and {} or {
        Up = '<Up> ',
        Down = '<Down> ',
        Left = '<Left> ',
        Right = '<Right> ',
        C = '<C-…> ',
        M = '<M-…> ',
        D = '<D-…> ',
        S = '<S-…> ',
        CR = '<CR> ',
        Esc = '<Esc> ',
        ScrollWheelDown = '<ScrollWheelDown> ',
        ScrollWheelUp = '<ScrollWheelUp> ',
        NL = '<NL> ',
        BS = '<BS> ',
        Space = '<Space> ',
        Tab = '<Tab> ',
        F1 = '<F1>',
        F2 = '<F2>',
        F3 = '<F3>',
        F4 = '<F4>',
        F5 = '<F5>',
        F6 = '<F6>',
        F7 = '<F7>',
        F8 = '<F8>',
        F9 = '<F9>',
        F10 = '<F10>',
        F11 = '<F11>',
        F12 = '<F12>',
      },
    },

    -- Document existing key chains
    spec = {
      -- Neotree exporer commands
      { '<leader>e', group = '[E]Explorer' },
      { '<leader>et', '<cmd>Neotree toggle<CR>', desc = 'Toggle explorer' },
      { '<leader>ef', '<cmd>Neotree focus<CR>', desc = 'Focus file on explorer' },
      { '<leader>w', '<cmd>w<CR>', desc = 'Save Buffer' },
      { '<leader>q', '<cmd>q<CR>', desc = 'Close buffer' },

      { '<leader>s', group = '[S]earch' },
      { '<leader>t', group = '[T]oggle' },
      { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
      { '<leader>h', group = 'Lsp Stuff' },

      {
        ';',
        function()
          Snacks.picker.files()
        end,
        desc = 'Toggle explorer',
      },

      -- Snacks picker related
      {
        '<leader><space>',
        function()
          Snacks.picker.buffers()
        end,
        desc = 'Search buffers',
      },
      {
        '<leader>sf',
        function()
          Snacks.picker.smart()
        end,
        desc = 'Search files(smart)',
      },
      {
        '<leader>sk',
        function()
          Snacks.picker.keymaps()
        end,
        desc = 'Search keymaps',
      },
      {
        '<leader>sw',
        function()
          Snacks.picker.grep_word()
        end,
        desc = 'Search word',
      },
      {
        '<leader>sg',
        function()
          Snacks.picker.grep()
        end,
        desc = 'Search grep',
      },
      {
        '<leader>sr',
        function()
          Snacks.picker.resume()
        end,
        desc = 'Search resume',
      },
      {
        '<leader>s.',
        function()
          Snacks.picker.resume()
        end,
        desc = 'Search recent files',
      },
      {
        '<leader>sd',
        function()
          Snacks.picker.diagnostics()
        end,
        desc = 'Search diagnostics',
      },

      -- Rename the variable under your cursor.
      --  Most Language Servers support renaming across files, etc.
      { '<leader>lr', vim.lsp.buf.rename, desc = 'Rename symbol' },
      -- Execute a code action, usually your cursor needs to be on top of an error
      -- or a suggestion from your LSP for this to activate.
      { '<leader>la', vim.lsp.buf.code_action, desc = 'Goto Code Action' },

      {
        'gl',
        function()
          vim.diagnostic.open_float(0, { scope = 'line' })
        end,
        desc = 'Show inline diagnostic',
      },
      {
        '<leader>gy',
        function()
          require('gitlinker').get_buf_range_url('v', { action_callback = require('gitlinker.actions').copy_to_clipboard })
        end,
        desc = 'Copy github link',
      },
      { '<leader>mj', '<cmd>%!jq<CR>', desc = 'Format JSON' },
    },
  },
}
