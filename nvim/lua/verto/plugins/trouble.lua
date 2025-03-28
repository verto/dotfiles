return {
  "folke/trouble.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-treesitter/nvim-treesitter"
  },
  config = function()
    vim.keymap.set(
      "n",
      "<leader>Q",
      function() require("trouble").toggle("diagnostics") end,
      { desc = 'Open all diagnostic [Q]uickfix list' }
    )
    vim.keymap.set(
      "n",
      "<leader>q",
      function() require("trouble").toggle({
        mode = "diagnostics",
        focus = false,
        filter = { buf = 0 }
      }) end,
      { desc = 'Open diagnostic [q]uickfix list' }
    )

    require("trouble").setup({
      auto_preview = false,
      action_keys = {
        jump_close = {"<C-o>"}, -- jump to the diagnostic and close the list
        jump = { "<cr>", "<tab>", "<2-leftmouse>", "o" }, -- jump to the diagnostic or open / close folds
      }
    })
  end
}
