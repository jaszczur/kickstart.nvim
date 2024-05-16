vim.opt_local.tabstop = 2
vim.opt_local.shiftwidth = 2
vim.opt_local.expandtab = true

vim.keymap.set('n', '<localleader>oo', ':!open %<CR>', { desc = '[O]pen in browser', buffer = true })

require('which-key').register {
  ['<localleader>o'] = { name = '[O]pen', _ = 'which_key_ignore' },
}
