-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- Provides file icons
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree filesystem reveal float<CR>', { desc = 'NeoTree reveal with Git' } },
  },
  opts = {
    filesystem = {
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true, -- Auto-refresh tree when files change
      window = {
        position = 'float', -- Always use floating window
        width = 30, -- Set the width of the floating window
        mappings = {
          ['\\'] = 'close_window', -- Close the window with \
        },
      },
    },
    git_status = {
      window = {
        position = 'float', -- Git status in floating window
      },
      symbols = {
        added = '✚', -- File added to Git
        modified = '', -- File modified
        deleted = '✖',
        renamed = '➜',
        untracked = '', -- Untracked file
        ignored = '', -- Ignored file
        unstaged = '✗',
        staged = '', -- Staged for commit
        conflict = '', -- Conflict in Git
      },
    },
    default_component_configs = {
      icon = {
        folder_closed = '', -- Closed folder icon
        folder_open = '', -- Open folder icon
        folder_empty = '', -- Empty folder icon
        default = '', -- Default file icon
      },
    },
    highlight = {
      NeoTreeNormal = { bg = '#1E1E2E', fg = '#D4D4D5' }, -- Custom background and foreground colors
      NeoTreeNormalNC = { bg = '#1E1E2E', fg = '#D4D4D5' }, -- When not focused
      NeoTreeEndOfBuffer = { bg = '#1E1E2E', fg = '#1E1E2E' }, -- Make the end of buffer match the background
      NeoTreeFloatBorder = { bg = '#1E1E2E', fg = '#5C5C75' },
    },
  },
}
