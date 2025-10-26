return {
  {
    "codethread/qmk.nvim",
    ft = { "c", "dts" }, -- QMK uses C, ZMK uses devicetree (ft=dts)
    opts = {
      name = "lily58_layout", -- arbitrary name for zmk
      variant = "zmk",
      comment_preview = {
        keymap_overrides = {
          ___ = " ",
        },
      },
      layout = {
        -- left half
        "x x x x x x _ _ x x x x x x",
        "x x x x x x _ _ x x x x x x",
        "x x x x x x _ _ x x x x x x",
        "x x x x x x x x x x x x x x",
        "_ _ _ x x x x x x x x _ _ _",
      },
    },
  },
}
