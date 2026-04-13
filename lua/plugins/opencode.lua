---@type LazySpec
return {
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      if not opts.mappings then opts.mappings = {} end
      opts.mappings.n = opts.mappings.n or {}
      opts.mappings.n["<Leader>ao"] = {
        function()
          Snacks.terminal.toggle("opencode", {
            cwd = vim.fn.getcwd(),
            win = { position = "right" },
          })
        end,
        desc = "Toggle opencode",
      }
    end,
  },
}
