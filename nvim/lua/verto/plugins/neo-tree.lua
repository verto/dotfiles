-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\t', ':Neotree<CR>', { desc = 'NeoTree' } },
    { '\\T', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ["o"] = "open",
          ["<esc>"] = "cancel", -- close preview or floating neo-tree window
          ['\\t'] = 'close_window',
        },
      },
      filtered_items = {
        hide_gitignored = false
      }
    },
  }
}