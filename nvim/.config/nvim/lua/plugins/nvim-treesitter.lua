local function setup()
  local tr_configs = require 'nvim-treesitter.configs'

  -- require
  tr_configs.setup {
    -- ('nvim-treesitter.configs')
    ensure_installed = {
      "c",
      "cpp",
      "bash",
      "css",
      "html",
      "java",
      "javascript",
      "json",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "regex",
      "rust",
      "scss",
      "markdown",
      "markdown_inline",
      "perl",
      "python",
      "go",
      "yaml",
      "typescript",
      "typst",
      "tsx",
      "zig"
    },
    highlight = {
      select = {
        enable = true,
      },
      ident = {
        enable = true,
      },
    },
  }
  -- set keymaps
  --local keymap = vim.keymap -- for conciseness

  vim.opt.foldmethod = "expr"
  --  vim.opt.foldexpre="nvim_treesitter#foldexpr()"
  --    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" }) -- find files within current working directory, respects .gitignore
  --    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" }) -- find previously opened files
end

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  dependencies = {},
  config = setup,
  --cmd = { "Telescope" }
}
