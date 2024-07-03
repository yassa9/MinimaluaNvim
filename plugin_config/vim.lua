-- Display line numbers.
vim.opt.number = true

-- Auto indent new lines.
vim.opt.autoindent = true

-- Use spaces instead of tabs.
vim.opt.expandtab = true

-- Set tab width to 2 spaces.
vim.opt.tabstop = 2

-- Indent by 2 spaces.
vim.opt.shiftwidth = 2

-- Use smartt tabs.
vim.opt.smarttab = true

-- Set soft tab stop to 2 spaces.
vim.opt.softtabstop = 2

-- Enable mouse support in all nodes.
vim.opt.mouse = "a"

-- Disable completion preview.
vim.opt.completeopt = vim.opt.completeopt - "preview"

-- Ignore Case Sensitive in Searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- Enable line wrapping
vim.o.wrap = true
-- Show line breaks
vim.o.linebreak = true
-- Don't break words
vim.o.list = false

-- Set text width to 80 characters
vim.o.textwidth = 80

-- Exit the application.
vim.api.nvim_set_keymap("n", "<F9>", ":q<CR>", { noremap = true, silent = true })

-- Adjust the width of pane to the right.
vim.api.nvim_set_keymap("n", "<F8>", "<C-w><", { noremap = true, silent = true })

-- Adjust the width of pane to the left.
vim.api.nvim_set_keymap("n", "<F7>", "<C-w>>", { noremap = true, silent = true })

-- Go to definition.
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- Horizontal terminal.
vim.api.nvim_set_keymap("n", "<F1>", ":tabnew | terminal<CR>", { noremap = true, silent = true })

-- Allow escape when in insert mode in terminal.
vim.api.nvim_exec(
	[[
  autocmd TermOpen * tnoremap <buffer> <F2> <C-\><C-n>
]],
	false
)

-- Allow clipboard functionality.
vim.opt.clipboard:append("unnamedplus")
