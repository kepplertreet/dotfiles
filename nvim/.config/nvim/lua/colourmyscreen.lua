function ColorMyPencils(color)
  color = color or 'rose-pine-moon'
  vim.cmd.colorscheme(color)

  -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  -- vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'none', fg = '#D4D4D5' })
  -- vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'none', fg = '#D4D4D5' })
  -- vim.api.nvim_set_hl(0, 'NeoTreeEndOfBuffer', { bg = 'none', fg = 'none' })
  -- vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', { bg = 'none', fg = '#5C5C75' })
  -- vim.api.nvim_set_hl(0, 'NeoTreeFloatTitle', { bg = 'none', fg = '#FFD700', bold = true })
end

return {

  {
    'vague2k/vague.nvim',
    lazy = false,
    opts = {
      transparent = true,
      style = {
        keywords = 'bold',
        keyword_return = 'bold',
        keywords_loop = 'bold',
        strings = 'bold',
        comments = 'none',
      },
    },
  },
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup {
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = false },
        functionStyle = { bold = true },
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        theme = 'wave', -- Load "wave" theme
      }
      ColorMyPencils 'kanagawa'
    end,
  },

  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        dark_variant = 'moon',
        styles = {
          italic = false,
          bold = true,
          transparency = true,
        },
      }
    end,
  },
}
