return {
  "Pocco81/true-zen.nvim",
  config = function()
    vim.keymap.set('n', '<leader>z', ":TZFocus<CR>", { desc = 'Zoom In/Out' })
  end,
}
