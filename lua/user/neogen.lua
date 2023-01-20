
local status_ok, neogen = pcall(require, "neogen")
if not status_ok then
  return
end

neogen.setup {
  enabled = true,             --if you want to disable Neogen
  languages = {
    python = {
      template = {
        annotation_convention = "numpydoc",
      },
    },
  },
  snippet_engine = "luasnip",
  input_after_comment = true,
}
