return {
  "AstroNvim/astrocore",
  opts = function(_, opts)
    opts.mappings = opts.mappings or {}
    opts.mappings.n = opts.mappings.n or {}
    opts.mappings.n["<leader>r"] = {
      function()
        local filename = vim.fn.expand("%")
        vim.cmd("split | terminal go run " .. filename)
      end,
      desc = "Run current Go file",
    }
  end,
}


