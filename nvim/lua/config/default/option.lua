-- [[ Setting options ]]
-- See `:help vim.o`

-- Set indent options
-- Disabled because we are using the tpope/vim-sleuth vim plugin to automatically detect the indentation configs.
-- vim.o.tabstop = 4
-- vim.o.shiftwidth = 4
-- vim.o.expandtab = true
-- vim.o.autoindent = true

-- Set highlight on search
vim.o.hlsearch = false
vim.o.incsearch = true

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = "yes"

-- Set colorscheme
vim.o.termguicolors = true
vim.cmd [[colorscheme dracula]]

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

