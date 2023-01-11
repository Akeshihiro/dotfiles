-- Set lualine as statusline
-- See `:help lualine.txt`
require("lualine").setup {
  options = {
    icons_enabled = false,
    theme = "dracula",
    component_separators = "|",
    section_separators = "",
  },
  sections = {
    lualine_b = {},
  },
}

