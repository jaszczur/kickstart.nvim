-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- { 'reasonml-editor/vim-reason-plus', lazy = false },
  {
    'mustache/vim-mustache-handlebars',
    'github/copilot.vim',
    {
      'nvim-orgmode/orgmode',
      event = 'VeryLazy',
      ft = { 'org' },
      config = function()
        -- Setup orgmode
        require('orgmode').setup {
          org_agenda_files = {
            '~/Sync/org/gtd/inbox.org',
            '~/Sync/org/gtd/gtd.org',
            '~/Sync/org/gtd/tickler.org',
          },
          org_default_notes_file = '~/Sync/org/gtd/inbox.org',
        }
      end,
    },
  },
}
