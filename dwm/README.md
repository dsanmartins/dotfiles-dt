# My dwm (Dynamic Window Manager) build

![Screenshot of my desktop](https://gitlab.com/dwt1/dotfiles/raw/master/.screenshots/dotfiles04.png) 
dwm is an extremely fast, small, and dynamic window manager for X.

# My Keybindings

The MODKEY is set to the `Super` key (aka the `Windows` key)

| Keybinding | Action |
| :--- | :--- |
| `MODKEY + Keypad Insert` | opens run launcher (dmenu is the run launcher but can be easily changed) |
| `MODKEY + Enter` | opens terminal (st is the terminal but can be easily changed) |
| `MODKEY + SHIFT + c` | closes window with focus |
| `MODKEY + SHIFT + q` | quits dwm |
| `MODKEY + j` | focus stack +1 (switches focus between windows in the stack) |
| `MODKEY + k` | focus stack -1 (switches focus between windows in the stack) |
| `MODKEY + SHIFT + j` | rotate stack +1 (rotates the windows in the stack) |
| `MODKEY + SHIFT + k` | rotate stack -1 (rotates the windows in the stack) |
| `MODKEY + h` | setmfact -0.05 (decreases window width) |
| `MODKEY + l` | setmfact +0.05 (increases window width) |
| `MODKEY + ,` | focusmon -1 (switches focus between monitors) |
| `MODKEY + .` | focusmon +1 (switches focus between monitors) |

# Requirements

In order to build dwm you need the Xlib header files.


# Installation

Edit config.mk to match your local setup (dwm is installed into
the /usr/local namespace by default).

Afterwards enter the following command to build and install dwm (if
necessary as root):

    make clean install


# Running dwm

Add the following line to your .xinitrc to start dwm using startx:

    exec dwm

In order to connect dwm to a specific display, make sure that
the DISPLAY environment variable is set correctly, e.g.:

    DISPLAY=foo.bar:1 exec dwm

(This will start dwm on display :1 of the host foo.bar.)

In order to display status info in the bar, you can do something
like this in your .xinitrc:

    while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
    do
    	sleep 1
    done &
    exec dwm


# Configuration

The configuration of dwm is done by creating a custom config.h
and (re)compiling the source code.
