local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 400,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = true,                   -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = true,                             -- display lines as one long line
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set diffopt+=vertical]]          -- diffsplit vertically
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

vim.g.python3_host_prog = '/usr/bin/python3'

-- Jukit
--[[ vim.g.jukit_terminal = "kitty" ]]
--[[ vim.g.jukit_savefig_dpi = 150 ]]
--[[ vim.g.jukit_inline_plotting = 1 ]]
--[[ vim.g.jukit_mpl_style = "/home/bhanu/.local/share/nvim/site/pack/packer/start/vim-jukit/helpers/matplotlib-backend-kitty/backend.mplstyle" ]]
--[[ vim.g.jukit_pdf_viewer = "xdg-open" ]]

-- Vimwiki
vim.g.vimwiki_list = {
  {
    path = '~/vimwiki',
    syntax = 'markdown',
    ext = '.md',
    diary_frequency = 'monthly',
  }
}

-- Vim-header
vim.g.header_field_author = 'Bhanu Priya S'
vim.g.header_field_author_email = 'bhanups@ncbs.res.in'
vim.g.header_auto_add_header = 0
vim.g.header_auto_update_header = 1
