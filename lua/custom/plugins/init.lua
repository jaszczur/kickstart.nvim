-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- { 'reasonml-editor/vim-reason-plus', lazy = false },
  {
    'mustache/vim-mustache-handlebars',
    'github/copilot.vim',
    require 'custom.plugins.orgmode',
  },
}
