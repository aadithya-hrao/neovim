return {
  'ggandor/leap.nvim',
  opts = {},
  config = function()
    require('leap').add_default_mappings()
  end,
}

