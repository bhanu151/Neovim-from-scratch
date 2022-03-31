local status_ok, gkeep = pcall(require, "gkeep")
if not status_ok then
  return
end

-- Keymaps --

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<leader>kt", "<cmd>GkeepToggle<cr>", opts)
keymap("n", "<leader>kn", "<cmd>GkeepNew<cr>", opts)
keymap("n", "<leader>kg", "<cmd>GkeepGoto<cr>", opts)
keymap("n", "<leader>kc", "<cmd>GkeepCheck<cr>", opts)
keymap("n", "<leader>ks", "<cmd>GkeepSortChecked<cr>", opts)
keymap("n", "<leader>kl", "<cmd>GkeepClearChecked<cr>", opts)

-- Configuration --
vim.g.gkeep_sync_dir = '~/work/gkeep'
