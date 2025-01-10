return {
  'mbbill/undotree',
  opts = {},
  config = function ()
    vim.keymap.set('n', '<leader>ud', vim.cmd.UndotreeToggle)
  end
}
