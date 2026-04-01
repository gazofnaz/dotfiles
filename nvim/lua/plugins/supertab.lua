-- Use <tab> for completion and snippets (supertab)
-- LazyVim v8+ uses blink.cmp instead of nvim-cmp
return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = { preset = "super-tab" },
    },
  },
}
