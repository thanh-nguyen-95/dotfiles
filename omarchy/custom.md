```lua
-- .config/nvim/lua/plugins/thanhnguyen-custom.lua
return {
  {
    -- Disable flash.nvim default keymap
    "folke/flash.nvim",
    keys = {
      -- disable the default flash keymap
      { "s", mode = { "n", "x", "o" }, false },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
    },
  },
}
```

```conf
# .config/hypr/windows.conf

general {
    gaps_in = 2
    gaps_out = 4
}
```

```conf
# .config/hypr/bindings.conf

# Application bindings
$terminal = uwsm app -- alacritty
# $browser = omarchy-launch-browser

bindd = SUPER, return, Terminal, exec, $terminal --working-directory="$(omarchy-cmd-terminal-cwd)"
bindd = SUPER, F, File manager, exec, uwsm app -- nautilus --new-window
bindd = SUPER, B, Browser, exec, uwsm app -- brave
bindd = SUPER, M, Music, exec, uwsm app -- spotify
bindd = SUPER, N, Neovim, exec, $terminal -e nvim
bindd = SUPER, T, Activity, exec, $terminal -e btop
bindd = SUPER, D, Docker, exec, $terminal -e lazydocker
bindd = SUPER, O, Obsidian, exec, uwsm app -- obsidian -disable-gpu

# If your web app url contains #, type it as ## to prevent hyperland treat it as comments
bindd = SUPER, A, ChatGPT, exec, omarchy-launch-webapp "https://chatgpt.com"
bindd = SUPER, E, Bitrix24, exec, omarchy-launch-webapp "https://egany.bitrix24.vn"
bindd = SUPER, Y, YouTube, exec, omarchy-launch-webapp "https://youtube.com/"
bindd = SUPER, X, X, exec, omarchy-launch-webapp "https://x.com/"

# Overwrite existing bindings, like putting Omarchy Menu on Super + Space
# unbind = SUPER, SPACE
# bindd = SUPER, SPACE, Omarchy menu, exec, omarchy-menu

# Override: Toggle split keybind
unbind = SUPER, J
bindd = SUPER, Backspace, Toggle split, togglesplit, # dwindle

# Override: Swap active window with the one next to it with SUPER + SHIFT + home-row keys
unbind = SUPER SHIFT, left
unbind = SUPER SHIFT, right
unbind = SUPER SHIFT, up
unbind = SUPER SHIFT, down

bindd = SUPER SHIFT, H, Swap window to the left, swapwindow, l
bindd = SUPER SHIFT, L, Swap window to the right, swapwindow, r
bindd = SUPER SHIFT, K, Swap window up, swapwindow, u
bindd = SUPER SHIFT, J, Swap window down, swapwindow, d

# Override: Move focus with SUPER + home-row keys
unbind = SUPER, left
unbind = SUPER, right
unbind = SUPER, up
unbind = SUPER, down
unbind = SUPER, K
bindd = SUPER, H, Move focus left, movefocus, l
bindd = SUPER, L, Move focus right, movefocus, r
bindd = SUPER, K, Move focus up, movefocus, u
bindd = SUPER, J, Move focus down, movefocus, d


```
