return {
  'stevearc/oil.nvim',
  opts = {
    skip_confirm_for_simple_edits = false,
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function ()
    require("oil").setup()
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    vim.keymap.set("n","_","<cmd>Oil getcwd()<CR><cmd>Oil .<CR>")
  end
}
