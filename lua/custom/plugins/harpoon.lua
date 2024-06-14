return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {}
    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end
    local map = vim.keymap.set

    map('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = '[H]arpoon [a]dd' })

    map('n', '<leader>hl', function()
      toggle_telescope(harpoon:list())
    end, { desc = '[H]arpoon [l]ist' })

    map('n', '<leader>hq', function()
      harpoon:list():select(1)
    end, { desc = '[H]arpoon 1' })
    map('n', '<leader>hw', function()
      harpoon:list():select(2)
    end, { desc = '[H]arpoon 2' })
    map('n', '<leader>hf', function()
      harpoon:list():select(3)
    end, { desc = '[H]arpoon 3' })
    map('n', '<leader>hp', function()
      harpoon:list():select(4)
    end, { desc = '[H]arpoon 4' })

    -- Toggle previous & next buffers stored within Harpoon list
    map('n', '<leader>hp', function()
      harpoon:list():prev()
    end, { desc = '[H]arpoon [p]revious' })
    map('n', '<leader>hn', function()
      harpoon:list():next()
    end, { desc = '[H]arpoon [n]ext' })
  end,
}