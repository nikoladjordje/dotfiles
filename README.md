# Dotfiles

Personal desktop configuration for a Hyprland Wayland session, plus Kitty,
lf, and Zathura settings. The active Hyprland configuration is Lua; there is
no legacy `hyprland.conf`.

## Setup

Install the programs listed below, clone this repository, and link the desired
config directories into `~/.config`. Back up or remove existing config paths
before linking. Replace `/path/to/dotfiles` with the repository's location.

```sh
DOTFILES=/path/to/dotfiles
mkdir -p ~/.config
ln -s "$DOTFILES/hyprland/hypr" ~/.config/hypr
ln -s "$DOTFILES/hyprland/waybar" ~/.config/waybar
ln -s "$DOTFILES/hyprland/wofi" ~/.config/wofi
ln -s "$DOTFILES/kitty" ~/.config/kitty
ln -s "$DOTFILES/lf" ~/.config/lf
ln -s "$DOTFILES/zathura" ~/.config/zathura
```

Start a Hyprland session. It loads `~/.config/hypr/hyprland.lua`, which starts
Waybar, udiskie, SwayNotificationCenter, awww, wlsunset, Elephant, and Walker.
The wallpaper daemon is started, but wallpaper selection is not configured in
this repository.

## What's configured

- **Hyprland:** Lua configuration with the master layout, keyboard layouts,
  window and workspace bindings, application shortcuts, media keys, screenshot
  bindings, and window rules.
- **Waybar:** workspaces, weather for Nis, media metadata, temperature, CPU,
  memory, audio, tray, keyboard layout, clock, and SwayNC notifications. Media
  metadata refreshes every five seconds.
- **Kitty:** terminal settings and image display support used by lf previews.
- **lf:** file navigation, image previews, and open actions for text, images,
  video, audio, and PDFs.
- **Zathura:** PDF viewer settings.

## Dependencies

Required for the configured session and bar:

- Hyprland with Lua configuration support, Waybar, Kitty, Walker, Elephant,
  udiskie, SwayNotificationCenter (`swaync`), awww, and wlsunset.
- `brave`, `pcmanfm`, `lf`, `obsidian`, `stremio`, and `pomodoro-logger` for
  their Hyprland shortcuts.
- `curl` for weather; `playerctl` for media metadata and media keys; `jq` for
  keyboard layout display; `grim`, `slurp`, and `xdg-open` for screenshots;
  `wpctl` and `brightnessctl` for volume and brightness keys.
- `systemctl` and `hyprlock` for power menu actions.

Additional programs used by lf's file-opening and preview setup include
`file`, `pistol`, `nvim`, `mirage`, `mpv`, `zathura`, and `xdg-open`. Archive
actions use `tar`, `unzip`, `unrar`, `7z`, and `zip`. Kitty's `kitten icat` is
used to display and clear image previews.

Steam and Heroic shortcuts are present in the Lua config and require `steam`
and `heroic` if you use them. Clipboard history and idle locking are commented
out optional integrations; enabling them also requires configuring their
services and tools as described in the Lua file.
