return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local function my_on_attach(bufnr) 
      local api = require "nvim-tree.api"
      local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
      end

      -- デフォルトマッピング
      api.config.mappings.default_on_attach(bufnr)

      vim.keymap.set('n', '<leader>tt', api.tree.toggle, opts("Toggle Tree"))
    end

    require("nvim-tree").setup {
      on_attach = my_on_attach,  -- 修正
    }
  end,
}
