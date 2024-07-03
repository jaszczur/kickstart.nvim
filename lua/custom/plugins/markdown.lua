return {
  'MeanderingProgrammer/markdown.nvim',
  name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('render-markdown').setup {
      start_enabled = false,
    }
  end,
  ft = 'markdown',
  keys = {
    {
      '<localleader>tr',
      function()
        require('render-markdown').toggle()
      end,
      desc = '[T]oggle [r]ender',
    },
  },
}
