return {
  {
    "codethread/qmk.nvim",
    ft = { "c", "dts" },
    opts = {
      name = "lily58_layout",
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
          ___ = " ",

          -- Umlaut Layer
          ["RA(E)"] = "Ë",
          ["RA(A)"] = "Ä",
          ["RA(S)"] = "ß",
          ["RA(U)"] = "Ü",
          ["RA(O)"] = "Ö",
          ["RA(N5)"] = "€",

          -- 🐭 Mouse Layer
          MOUSE = "󰍽",
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
          MEDIA = "󰕾",
          ["&kp C_PREVIOUS"] = "󰒮",
          ["&kp C_NEXT"] = "󰒭",
          ["&kp C_PLAY_PAUSE"] = "/",
          ["&kp C_MUTE"] = "󰝟",
          ["&kp C_VOLUME_UP"] = "󰕾",
          ["&kp C_VOLUME_DOWN"] = "󰕿",

          -- 🖥️ System Layer
          SYS = "",
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

          -- Modifiers
          ["LG("] = "🐧 + ",
          ["LA("] = "⎇ + ",
          ["LS("] = "⇧ + ",
          ["LC("] = "⌃ + ",
          [")"] = "", -- This breaks the parentheses on the symbol layer but simplifies the shortcuts by a lot
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
