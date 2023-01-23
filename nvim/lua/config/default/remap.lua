-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Make Ctrl+C a full Esc
vim.keymap.set("", "<C-c>", "<Esc>", { silent = true })

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set("", "<Space>", "<Nop>", { silent = true })
vim.keymap.set("", "<CR>", "<Nop>", { silent = true })
vim.keymap.set("", "<BS>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? \"gk\" : \"k\"", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? \"gj\" : \"j\"", { expr = true, silent = true })

-- Make the jumping to the start and end of a line more comfortable
-- (inspired by the Helix editor)
vim.keymap.set("", "gh", "0", { silent = true })
vim.keymap.set("", "gs", "^", { silent = true })
vim.keymap.set("", "gl", "$", { silent = true })

vim.keymap.set("", "j", "jzz", { silent = true })
vim.keymap.set("", "k", "kzz", { silent = true })

-- System clipboard and other useful stuff
vim.keymap.set("", "<Leader>y", "\"+y", { silent = true })
vim.keymap.set("n", "<Leader>y", "\"+yy", { silent = true })

vim.keymap.set("", "<Leader>p", "\"_dP", { silent = true })
vim.keymap.set("", "<Leader>P", "\"_d\"+P", { silent = true })
vim.keymap.set("n", "<Leader>p", "\"+p", { silent = true })
vim.keymap.set("n", "<Leader>P", "\"+P", { silent = true })

vim.keymap.set("", "<Leader>d", "\"_d", { silent = true })
vim.keymap.set("n", "<Leader>d", "\"_dd", { silent = true })
