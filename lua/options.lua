-- Neovim Configuration
-- Organized configuration file with improved structure and documentation

local g = vim.g
local o = vim.o
local opt = vim.opt

-- =============================================================================
-- LEADER KEYS
-- =============================================================================
-- Primary leader for most mappings
g.mapleader = ' '
-- Local leader for buffer/filetype specific mappings  
g.maplocalleader = ';'

-- =============================================================================
-- SYSTEM INTEGRATION
-- =============================================================================
-- Enable mouse support in all modes
o.mouse = 'a'
-- Use system clipboard (scheduled to prevent startup lag)
vim.schedule(function() opt.clipboard:append "unnamedplus" end)
-- Respect .editorconfig files for consistent formatting across projects
g.editorconfig = true

-- =============================================================================
-- FILE MANAGEMENT
-- =============================================================================
-- Disable swap files (using persistent undo instead)
o.swapfile = false
-- Enable persistent undo history
o.undofile = true
o.undodir = vim.env.HOME .. '/.cache/nvim/undodir'
-- Allow switching buffers without saving (hidden buffers)
o.hidden = true

-- =============================================================================
-- DISPLAY AND UI
-- =============================================================================
-- Line numbers and cursor
o.number = true
o.cursorline = true
-- Always show sign column to prevent horizontal shifting
o.signcolumn = 'no'
-- Window splitting behavior
o.splitright = true
o.splitbelow = true
-- Rounded window borders
o.winborder = "rounded"

-- =============================================================================
-- CODE FOLDING
-- =============================================================================
-- Use Treesitter for intelligent folding
o.foldmethod = 'expr'
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- Start with all folds open
o.foldlevel = 99
-- Use modern fold text (no custom fold text)
o.foldtext = ""

-- =============================================================================
-- INDENTATION AND FORMATTING
-- =============================================================================
-- Tab settings (2 spaces, expand to spaces)
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
-- Automatic indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
o.autoindent = true

-- =============================================================================
-- WHITESPACE VISUALIZATION
-- =============================================================================
-- Show invisible characters
o.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- =============================================================================
-- SEARCH BEHAVIOR
-- =============================================================================
-- Smart case sensitivity (case-insensitive unless uppercase used)
o.smartcase = true

-- =============================================================================
-- PERFORMANCE AND RESPONSIVENESS
-- =============================================================================
-- Reduce screen update delay for better responsiveness
o.updatetime = 250
-- Timeout for key sequence completion
o.timeoutlen = 301
