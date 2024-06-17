
  return{ -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    config = function ()
      vim.api.nvim_set_keymap('n', '<leader>tg', '<cmd>Gitsigns toggle_signs<CR>', { noremap = true, silent = true })
    end,
    opts = {
      signs = {
        add = { text = '+' },

        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  }
