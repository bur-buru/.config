{
    //"layer": "top", // Waybar at top layer
    "position": "bottom", // Waybar at the bottom of your screen
    "height": 20, // Waybar height
    // "width": 1280, // Waybar width
    // Choose the order of the modules
    "modules-left": ["sway/workspaces","custom/arrow6","sway/mode","custom/mpd","battery"],
    "modules-center": ["clock#1"],
    "modules-right": ["custom/arrow5","pulseaudio","custom/arrow4", "clock#2", "custom/arrow3","cpu", "memory","custom/arrow1", "tray","custom/arrow2"],
    // Modules configuration
     "sway/workspaces": {
         "disable-scroll": true,
         "all-outputs": false,
         "format":"{icon}",
         "format-icons": {
             "1": "",
             "2": "",
             "3": "",
             "4": "",
             "5": "",
             "6": "",
             "urgent": "",
             "focused": "",
             "default": ""
         }
     },
    "sway/mode": {
        "format": "<span style=\"italic\">{}</span>"
    },
    "tray": {
	    "icon-size": 14,
        "spacing": 5
    },
    "clock#1": {
        "tooltip-format": "{:%Y-%m-%d | %H:%M}"
    },
	"clock#2": {
		"format": "{:%d. %B %Y}"
	},
    "cpu": {
        "format": "{usage}% "
    },
    "memory": {
        "format": "{}% ",
	"on-click": "termite -e htop"
    },
    "battery": {
    	"bat": "BAT2",
    	"interval": 60,
   	"states": {
        "warning": 30,
        "critical": 15
    	},
    	"format": "{capacity}% {icon}",
   	"format-icons": ["", "", "", "", ""],
    	"max-length": 25
    	},
    "network": {
        // "interface": "wlp2s0", // (Optional) To force the use of this interface
        "format-wifi": "{essid} ({signalStrength}%) ",
        "format-ethernet": "{ifname}: {ipaddr}/{cidr} ",
        "format-disconnected": "Disconnected ⚠"
    },
    "pulseaudio": {
        "scroll-step": 5,
        "format": "{volume}% {icon}",
        "format-bluetooth": "{volume}% {icon}",
        "format-muted": "",
        "format-icons": {
            "headphones": "",
            "handsfree": "",
            "headset": "",
            "phone": "",
            "portable": "",
            "car": "",
            "default": ["", ""]
        },
        "on-click": "pavucontrol"
    },
    "custom/mpd": {
        "format": "♪ {}",
        "interval": 1,
        //"max-length": 15,
        "exec": "echo $(mpc current) – $(mpc status | awk '{print $3}' | sed -n 2p)",
        "exec-if": "pgrep mpd",
        "on-click-right": "mpc toggle",
        "on-click": "$term -e ncmpcpp"
    },
	"custom/arrow1": {
		"format": ""
	},
	"custom/arrow3": {
		"format": ""
	},
	"custom/arrow4": {
		"format": ""
	},
	"custom/arrow5": {
		"format": ""
	},
	"custom/arrow6": {
		"format": ""
	},
	"custom/arrow2": {
		"format": ""
	}
}

