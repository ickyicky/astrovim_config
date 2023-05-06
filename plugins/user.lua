return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- {
  --   "Exafunction/codeium.vim",
  --   config = function()
  --     -- Change '<C-g>' here to any keycode you like.
  --     vim.keymap.set("i", "<C-e>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
  --     vim.keymap.set("i", "<C-q>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
  --     vim.keymap.set("i", "<C-w>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
  --     vim.keymap.set("i", "<c-r>", function() return vim.fn["codeium#Complete"]() end, { expr = true })
  --   end,
  --   lazy = false,
  -- },
  {
    "chriskempson/base16-vim",
    lazy = false,
  },
  {
    "folke/lsp-colors.nvim",
    lazy = false,
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "User AstroFile",
    config = function()
      require('copilot').setup(
        {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<C-e>",
            accept_word = false,
            accept_line = false,
            next = "<C-w>",
            prev = "<C-q>",
            dismiss = "<C-r>",
          },
        },
        copilot_node_command = 'node', -- Node.js version must be > 16.x
        server_opts_overrides = {},
      }
    )
    end
  },
}
