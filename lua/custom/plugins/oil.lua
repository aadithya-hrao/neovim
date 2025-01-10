return {
  'stevearc/oil.nvim',
  opts = {
    skip_confirm_for_simple_edits = false,
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keymap = {
    ["<C-H>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
  },
  config = function ()
    require("oil").setup()
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    vim.keymap.set("n","_","<cmd>Oil getcwd()<CR><cmd>Oil .<CR>")
  end

}
