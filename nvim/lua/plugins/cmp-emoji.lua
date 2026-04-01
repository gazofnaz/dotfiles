-- Add emoji completion to blink.cmp via blink.compat
-- LazyVim v8+ uses blink.cmp instead of nvim-cmp
return {
  { "saghen/blink.compat", opts = {} },
  { "hrsh7th/cmp-emoji" },
  {
    "saghen/blink.cmp",
    dependencies = { "saghen/blink.compat", "hrsh7th/cmp-emoji" },
    opts = {
      sources = {
        default = { "emoji" },
        providers = {
          emoji = {
            name = "emoji",
            module = "blink.compat.source",
          },
        },
      },
    },
  },
}
