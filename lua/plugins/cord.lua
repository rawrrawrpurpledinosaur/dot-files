return {
  {
    "vyfor/cord.nvim",
    build = "./build || .\\build",
    event = "VeryLazy",
    opts = { log_level = "trace" }, -- calls require('cord').setup()
  },
}
