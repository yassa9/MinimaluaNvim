-- VIM PLUG CONFIGURATION
-- Install and load vim-plug if not installed.
local plug_path = vim.fn.stdpath("data") .. "/site/autoload/plug.vim"
if vim.fn.filereadable(plug_path) == 0 then
	vim.fn.system({
		"curl",
		"-fLo",
		plug_path,
		"--create-dirs",
		"https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim",
	})
	vim.cmd("source " .. plug_path)
	vim.cmd("PlugInstall --sync | source $MYVIMRC")
end

-- Set space bar as leader key
vim.g.mapleader = " " -- ' ' for Space bar

-- Packages to install.
vim.cmd([[
  call plug#begin()
  Plug 'https://github.com/preservim/nerdtree'
  Plug 'https://github.com/dasupradyumna/midnight.nvim'
  Plug 'https://github.com/vim-airline/vim-airline'
  Plug 'https://github.com/neovim/nvim-lspconfig'
  Plug 'https://github.com/hrsh7th/nvim-cmp'
  Plug 'https://github.com/hrsh7th/cmp-buffer'
  Plug 'https://github.com/hrsh7th/cmp-path'
  Plug 'https://github.com/hrsh7th/cmp-nvim-lsp'
  Plug 'https://github.com/chomosuke/typst-preview.nvim', {'tag': 'v0.3.*'}
  Plug 'https://github.com/mg979/vim-visual-multi'
  Plug 'https://github.com/tpope/vim-commentary'
  Plug 'https://github.com/tanvirtin/vgit.nvim'

  Plug 'https://github.com/nvim-telescope/telescope.nvim'
  Plug 'https://github.com/nvim-lua/plenary.nvim'
  Plug 'https://github.com/xiyaowong/transparent.nvim'
  call plug#end()
]])

--   Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
--   Plug 'https://github.com/sbdchd/neoformat'

-- Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
-- Plug 'https://github.com/nvim-treesitter/nvim-treesitter-context'
-- Plug 'https://github.com/mhartington/formatter.nvim'
-- Plug 'https://github.com/williamboman/mason.nvim'
-- Plug 'https://github.com/stevearc/dressing.nvim'
-- Plug("https://github.com/akinsho/flutter-tools.nvim")
-- Plug("https://github.com/mfussenegger/nvim-dap")
-- Plug("https://github.com/fatih/vim-go")
-- --

-- This makes the plugin config accessible in other directory.
package.path = package.path .. ";/home/yassa/.config/nvim/?.lua"

-- CUSTOM CONFIGURATION
require("plugin_config.vim")

-- ARDUINO CONFIGURATION
-- require("plugin_config.arduino")

-- NERDTREE CONFIGURATION
require("plugin_config.nerdtree")

-- TELESCOPE CONFIGURATION
-- require("plugin_config.telescope")

-- C/C++ CONFIGURATION
require("plugin_config.c_c++")

-- BASH CONFIGURATION
-- require("plugin_config.bash")

-- GO CONFIGURATION
-- require("plugin_config.go")

-- TAILWIND CSS CONFIGURATION
-- require("plugin_config.tailwindcss")

-- TYPESCRIPT CONFIGURATION
require("plugin_config.typescript")

-- MARKDOWN CONFIGURATION
require("plugin_config.markdown")

-- LUA CONFIGURATION
-- require("plugin_config.lua")

-- MASON CONFIGURATION
-- require("plugin_config.mason")

-- NVIM-CMP CONFIGURATION
require("plugin_config.cmp")

-- NEOFORMAT CONFIGURATION
-- require("plugin_config.neoformat")

-- GIT CONFIGURATION
-- require("plugin_config.git")

-- PYTHON CONFIGURATION
require("plugin_config.python")

require("plugin_config.theme")

-- Set the background color for Neovim terminal
vim.api.nvim_set_option("termguicolors", true)

-- Keybindings for folding
vim.api.nvim_set_keymap("n", "za", "za", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "zo", "zo", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "zc", "zc", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "zM", "zM", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "zR", "zR", { noremap = true, silent = true })

-- Remap < to keep visual mode
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Leader>/", ":Commentary<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<Leader>/", ":Commentary<CR>", { noremap = true, silent = true })

-- Terminal mappings with leader key
vim.api.nvim_set_keymap("n", "<Leader>tv", ":botright vnew +term<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>th", ":botright split +term<CR>", { noremap = true, silent = true })

-- Key binding to exit insert mode and switch splits (using leader + space)
vim.api.nvim_set_keymap("t", "<Leader><Space>", "<C-\\><C-n><C-w>w", { noremap = true })

-- Key binding to switch between splits using leader + space
vim.api.nvim_set_keymap("n", "<Leader><Space>", "<C-w>w", { noremap = true })

-- Key bindings to resize windows with Shift + Ctrl and arrow keys
vim.api.nvim_set_keymap("n", "<C-S-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-Up>", ":resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-Down>", ":resize -2<CR>", { noremap = true, silent = true })

-- Disable virtual text diagnostics
vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

-- Customize diagnostic signs (remove them or change their symbols)
local signs = { Error = "E", Warn = "W", Hint = "H", Info = "I" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
