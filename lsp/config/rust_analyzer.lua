return {
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        loadOutDirsFromCheck = true,
        features = "all",
      },
      checkOnSave = {
        overrideCommand = {
          "cargo",
          "clippy",
          "--workspace",
          "--message-format=json",
          "--all-targets",
          "--all-features",
        },
      },
      procMacro = {
        enable = true,
      },
      experimental = {
        procAttrMacros = true,
      },
    },
  },
}
