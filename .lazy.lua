return {
  {
    "codethread/qmk.nvim",
    ft = { "c", "dts" }, -- QMK uses C, ZMK uses devicetree (ft=dts)
    opts = {
      name = "lily58_layout", -- arbitrary name for zmk
      variant = "zmk",
      comment_preview = {
        keymap_overrides = {
          -- 🧱 Modifiers
          LALT = "⎇",
          LCTRL = "⌃",
          LGUI = "󰻀",
          LSHFT = "⇧",
          RALT = "⎇",
          RCTRL = "⌃",
          RGUI = "󰻀",
          RSHFT = "⇧",

          -- 🧭 Navigation
          HOME = "󰞓",
          PGDN = "PG󰁅",
          PGUP = "PG󰁝",
          END = "󰞔",
          LEFT = "󰁍",
          DOWN = "󰁅",
          UP = "󰁝",
          RIGHT = "󰁔",

          -- ⌨️ Common Keys
          ESC = "󱊷",
          TAB = "",
          BSPC = "⌫",
          RET = "⏎",
          SPACE = "␣",
          DEL = "⌦",
          SYS = "",
          ___ = " ",

          -- 🔤 Unicode Layer
          ["&uc UC_DE_AE"] = "Ä",
          ["&uc UC_DE_SS"] = "ß",
          ["&uc UC_DE_UE"] = "Ü",
          ["&uc UC_DE_OE"] = "Ö",
          ["&uc UC_CURR_EURO"] = "€",
          ["&uc UC_CURR_DOLLAR"] = "$",
          ["&uc UC_CURR_POUND"] = "£",

          -- 🐭 Mouse Layer
          ["&mmv MOVE_LEFT"] = "󰍽 󰁍",
          ["&mmv MOVE_RIGHT"] = "󰍽 󰁔",
          ["&mmv MOVE_UP"] = "󰍽 󰁝",
          ["&mmv MOVE_DOWN"] = "󰍽 󰁅",
          ["&msc SCRL_LEFT"] = "󰍉 󰁍",
          ["&msc SCRL_RIGHT"] = "󰍉 󰁔",
          ["&msc SCRL_UP"] = "󰍉 󰁝",
          ["&msc SCRL_DOWN"] = "󰍉 󰁅",
          ["MB1"] = "󰍽 MB1",
          ["MB2"] = "󰍽 MB2",
          ["MB3"] = "󰍽 MB3",

          -- 🔧 Function Layer
          F1 = "F1",
          F2 = "F2",
          F3 = "F3",
          F4 = "F4",
          F5 = "F5",
          F6 = "F6",
          F7 = "F7",
          F8 = "F8",
          F9 = "F9",
          F10 = "F10",
          F11 = "F11",
          F12 = "F12",

          -- 🎵 Media Layer
          ["&kp C_PREVIOUS"] = "󰒮",
          ["&kp C_NEXT"] = "󰒭",
          ["&kp C_PLAY_PAUSE"] = "/",
          ["&kp C_MUTE"] = "󰝟",
          ["&kp C_VOLUME_UP"] = "󰕾",
          ["&kp C_VOLUME_DOWN"] = "󰕿",

          -- 🖥️ System Layer
          ["&sys_reset"] = "RESET",
          ["&bootloader"] = "BOOT",
          ["&bt BT_CLR"] = "󰂭",
          ["&bt BT_SEL 0"] = "󰂯0",
          ["&bt BT_SEL 1"] = "󰂯1",
          ["&bt BT_SEL 2"] = "󰂯2",
          ["&bt BT_SEL 3"] = "󰂯3",
          ["&bt BT_SEL 4"] = "󰂯4",
          ["&out OUT_USB"] = "󰕒",
          ["&out OUT_BLE"] = "󰂯",

          -- Extra behaviors
          ["&hml"] = ":",
          ["&hmr"] = ":",
          ["&lt"] = "",
          ["&mo"] = "",

          -- Shortcuts
          ["&kp LG(LA(N1))"] = "🐧 + ⎇ + 1",
          ["&kp LG(LA(N2))"] = "🐧 + ⎇ + 2",
          ["&kp LG(LA(N3))"] = "🐧 + ⎇ + 3",
          ["&kp LG(LA(N4))"] = "🐧 + ⎇ + 4",

          ["&kp LG(LA(H))"] = "🐧 + ⎇ + H",
          ["&kp LG(LA(L))"] = "🐧 + ⎇ + L",
          ["&kp LS(LG(LA(H)))"] = "🐧 + ⇧ + ⎇ + H",
          ["&kp LS(LG(LA(L)))"] = "🐧 + ⇧ + ⎇ + L",

          -- 🖱️ General icons
          MOUSE = "󰍽",
          MEDIA = "󰕾",
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
