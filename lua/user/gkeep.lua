local status_ok, gkeep = pcall(require, "gkeep")
if not status_ok then
  return
end

-- Configuration --
vim.g.gkeep_sync_dir = '~/work/gkeep'
vim.g.gkeep_sync_archived = true
