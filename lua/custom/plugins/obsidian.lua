-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
-- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
local home = vim.fn.expand '~'
local obsidian_base = home .. '/Sync/obsidian'
local obsidian_files = obsidian_base .. '/**.md'

return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
    'BufReadPre ' .. obsidian_files,
    'BufNewFile ' .. obsidian_files,
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = obsidian_base .. '/personal',
      },
      {
        name = 'work',
        path = obsidian_base .. '/work',
      },
    },

    -- see below for full list of options 👇
  },
}
