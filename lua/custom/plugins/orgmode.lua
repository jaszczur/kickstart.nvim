local M = { 'nvim-orgmode/orgmode' }

M.event = 'VeryLazy'
M.ft = { 'org' }
M.config = function()
  -- Setup orgmode
  require('orgmode').setup {
    org_agenda_files = {
      '~/Sync/org/gtd/inbox.org',
      '~/Sync/org/gtd/gtd.org',
      '~/Sync/org/gtd/tickler.org',
    },
    org_default_notes_file = '~/Sync/org/gtd/inbox.org',
  }
end

return M
