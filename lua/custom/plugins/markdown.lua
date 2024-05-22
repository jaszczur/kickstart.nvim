return {
  'MeanderingProgrammer/markdown.nvim',
  name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('render-markdown').setup {}
  end,
  ft = 'markdown',
  keys = {
    {
      '<localleader>t',
      function()
        require('render-markdown').toggle()
      end,
      desc = '[T]oggle raw/preview mode',
    },
  },
}
