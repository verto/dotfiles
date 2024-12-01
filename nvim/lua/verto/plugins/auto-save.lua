return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle", -- optional for lazy loading on command
  event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
  opts = {
    -- your config goes here
    -- or just leave it empty :)
    condition = function(buf)
    local fn = vim.fn
    local utils = require("auto-save.utils.data")

    -- only auto save for scala file types
    if utils.not_in(fn.getbufvar(buf, "&filetype"), {'scala', 'sbt', 'java'}) then
      return false
    end
    return true
  end
  },
}
