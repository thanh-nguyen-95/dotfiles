local nls = require("null-ls")

nls.setup({
  sources = {
    nls.builtins.formatting.stylua,
    nls.builtins.formatting.prismaFmt,
    nls.builtins.formatting.prettier.with({
      prefer_local = true,
    }),
    nls.builtins.formatting.prismaFmt,
    nls.builtins.formatting.rustfmt,
  },
})
