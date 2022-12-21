# Other XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:="/tmp/runtime-boi"}

# Disable files
export LESSHISTFILE=-

# Fixing Paths
export PATH=~/.local/bin:$PATH
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE="$XDG_DATA_HOME"/zsh/history

# Default Apps
export EDITOR="nvim"
export READER="zathura"
export VISUAL="nvim"
export TERMINAL="st"
export BROWSER="qutebrowser"
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
export WM="dwm"

export CALIBRE_USE_SYSTEM_THEME=0
export CALIBRE_USE_DARK_PALETTE=1

if [[ "$(tty)" = "/dev/tty1" ]]; then
	      startx
fi
