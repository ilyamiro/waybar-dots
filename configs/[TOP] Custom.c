
{
"include": "~/.config/waybar/modules",
"layer": "top", 
"position": "top", 
//"mode": "dock",
"exclusive": true,
"passthrough": false,
"gtk-layer-shell": true,
"margin-left": 6,
"margin-right": 6,
"margin-top": 2,


"modules-left": [	
  "battery",
  "clock",
  "custom/swaync",
  "custom/update",
 	"hyprland/workspaces",
  "custom/playerctl"
	],
    
"modules-center": [
  "hyprland/window",
 	],
    
"modules-right": [
  "tray", 
  "backlight",
  "group/audio",
  "custom/keyboard",
  "custom/power"
  ],
}
