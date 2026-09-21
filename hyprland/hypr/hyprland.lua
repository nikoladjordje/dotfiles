-- Converted from your hyprland.conf to Hyprland 0.55+ Lua config.
-- Put this at: ~/.config/hypr/hyprland.lua
-- If this file exists, Hyprland loads it instead of hyprland.conf on startup.

------------------
---- MONITORS ----
------------------

hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = 1,
	transform = 0,
})

---------------------
---- MY PROGRAMS ----
---------------------

local terminal = "kitty"
local fileManager = "pcmanfm"
local lf = "lf"
local menu = "walker"
local mainMod = "SUPER"

-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
	hl.exec_cmd("waybar")
	hl.exec_cmd("udiskie")
	hl.exec_cmd("swaync")
	-- hl.exec_cmd("mako")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("wlsunset -l 44.8 -L 20.5 -t 3500 -T 3900")
	hl.exec_cmd("elephant")
	hl.exec_cmd("walker --gapplication-service")
	-- Optional, install wl-clipboard + cliphist first.
	-- hl.exec_cmd("wl-paste --type text --watch cliphist store")
	-- hl.exec_cmd("wl-paste --type image --watch cliphist store")

	-- Optional, configure hypridle/hyprlock first.
	-- hl.exec_cmd("hypridle")
end)

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XCURSOR_THEME", "macOS")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "macOS")
hl.env("HYPRCURSOR_SIZE", "24")
-- hl.env("GTK_THEME", "Arc-Dark")

-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 10,
		border_size = 2,
		col = {
			active_border = "rgba(ffffffee)",
			inactive_border = "rgba(595959aa)",
		},
		resize_on_border = true,
		allow_tearing = false,
		layout = "master",
	},

	decoration = {
		rounding = 0,
		rounding_power = 2,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = 0xee1a1a1a,
		},
		blur = {
			enabled = true,
			size = 3,
			passes = 1,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},

	master = {
		new_status = "master",
	},

	dwindle = {
		preserve_split = true,
	},

	scrolling = {
		fullscreen_on_one_column = true,
	},

	misc = {
		force_default_wallpaper = -1,
		disable_hyprland_logo = false,
	},

	input = {
		kb_layout = "us,rs(latinyz),rs",
		kb_variant = ",,",
		kb_model = "",
		kb_options = "",
		kb_rules = "",
		follow_mouse = 1,
		sensitivity = -0.5,
		repeat_delay = 300,
		repeat_rate = 50,
		touchpad = {
			natural_scroll = false,
		},
	},

	cursor = {
		inactive_timeout = 3,
	},
})

--------------------
---- ANIMATIONS ----
--------------------

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
hl.curve("easy", { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })

---------------
---- INPUT ----
---------------

-- Enable if your Hyprland build supports the new gesture helper.
hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})

---------------------
---- KEYBINDINGS ----
---------------------

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("brave"))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd(terminal .. " -e " .. lf))
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("pomodoro-logger"))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
-- hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("wofi --sort-order=alphabetical"))
hl.bind(mainMod .. " + P", hl.dsp.layout("swapwithmaster master"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("obsidian"))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = 0 }))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("swaync-client -t -sw"))
-- Open Steam
hl.bind(mainMod .. " + SHIFT + G", hl.dsp.exec_cmd("steam"))

-- Open Heroic Games Launcher
hl.bind(mainMod .. " + SHIFT + Y", hl.dsp.exec_cmd("heroic"))

-- Screenshot: select area, save, open.
hl.bind(
	mainMod .. " + SHIFT + S",
	hl.dsp.exec_cmd(
		[[sh -c 'file=~/Pictures/Screenshots/$(date +%Y-%m-%d_%H-%M-%S).png && grim -g "$(slurp)" "$file" && xdg-open "$file"']]
	)
)

-- Screenshot: select area to clipboard. Requires wl-copy.
hl.bind(mainMod .. " + CTRL + S", hl.dsp.exec_cmd([[sh -c 'grim -g "$(slurp)" - | wl-copy']]))

-- Language switch + Waybar refresh.
hl.bind(
	"SUPER + SPACE",
	hl.dsp.exec_cmd("hyprctl switchxkblayout by-tech-gaming-keyboard next; pkill -RTMIN+10 waybar")
)

-- Power menu.
hl.bind("SUPER + M", hl.dsp.exec_cmd(os.getenv("HOME") .. "/.config/hypr/scripts/walker_powermenu.sh"))

-- Clipboard history. Requires cliphist + wl-clipboard.
-- hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd([[sh -c 'cliphist list | wofi --dmenu | cliphist decode | wl-copy']]))

-- Focus with Vim keys.
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Move active window with Vim keys.
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- Resize active window with Vim keys.
hl.bind(mainMod .. " + CTRL + H", hl.dsp.window.resize({ x = -20, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + CTRL + L", hl.dsp.window.resize({ x = 20, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + CTRL + K", hl.dsp.window.resize({ x = 0, y = -20, relative = true }), { repeating = true })
hl.bind(mainMod .. " + CTRL + J", hl.dsp.window.resize({ x = 0, y = 20, relative = true }), { repeating = true })

-- Workspaces.
for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces.
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Mouse move/resize.
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Multimedia keys.
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 10%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 10%-"), { locked = true, repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-----------------------------
---- WORKSPACE RULES --------
-----------------------------

-- Smart gaps / no gaps when only one tiled window or fullscreen workspace.
hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })
hl.window_rule({
	name = "no-gaps-wtv1",
	match = { float = false, workspace = "w[tv1]" },
	border_size = 0,
	rounding = 0,
})
hl.window_rule({
	name = "no-gaps-f1",
	match = { float = false, workspace = "f[1]" },
	border_size = 0,
	rounding = 0,
})

----------------------
---- WINDOW RULES ----
----------------------

hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },
	move = "20 monitor_h-120",
	float = true,
})

-- Common floating helpers.
hl.window_rule({
	name = "float-pavucontrol",
	match = { class = "pavucontrol" },
	float = true,
	size = "900 600",
})
hl.window_rule({
	name = "float-blueman",
	match = { class = "blueman-manager" },
	float = true,
})
hl.window_rule({
	name = "pin-picture-in-picture",
	match = { title = "Picture-in-Picture" },
	float = true,
	pin = true,
})
hl.window_rule({
	name = "steam-chat",
	match = {
		class = "steam",
		title = "Friends List",
	},
	float = true,
	size = "500 700",
	center = true,
})

-- Optional workspace routing. Enable after checking class names with: hyprctl clients
-- hl.window_rule({ name = "brave-workspace",    match = { class = "Brave-browser" }, workspace = 2 })
-- hl.window_rule({ name = "idea-workspace",     match = { class = "jetbrains-idea" }, workspace = 3 })
-- hl.window_rule({ name = "obsidian-workspace", match = { class = "obsidian" }, workspace = 4 })
