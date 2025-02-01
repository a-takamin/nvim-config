return {
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()  -- `config` を使うことで `setup()` が確実に呼ばれる
      require("tokyonight").setup({
        transparent = true,  -- 背景を透明にする
        styles = {
          sidebars = "transparent", -- サイドバーも透過
          floats = "transparent",   -- フローティングウィンドウも透過
        }
      })

      vim.cmd.colorscheme 'tokyonight-night'
      vim.cmd.hi 'Comment gui=none'
    end
  }
}
