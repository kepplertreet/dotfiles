return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local none_ls = require 'null-ls'
    none_ls.setup {
      sources = {
        none_ls.builtins.formatting.stylua,
        none_ls.builtins.formatting.black,
        none_ls.builtins.formatting.prettier,
        none_ls.builtins.formatting.clang_format,
        require 'none-ls.diagnostics.ruff',
        require 'none-ls.diagnostics.eslint',
      },
    }

    -- Set keymap for formatting
    vim.keymap.set('n', '<leader>gf', function()
      vim.lsp.buf.format { async = true }
    end, { desc = '[G]lobal [F]ormat' })
  end,
}
