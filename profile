# /etc/profile

# Set our umask
umask 022

# Append "$1" to $PATH when not already in.
# This function API is accessible to scripts in /etc/profile.d
append_path () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="${PATH:+$PATH:}$1"
    esac
}

# Append our default paths
append_path '/usr/local/sbin'
append_path '/usr/local/bin'
append_path '/usr/bin'

# Force PATH to be environment
export PATH

# Load profiles from /etc/profile.d
if test -d /etc/profile.d/; then
	for profile in /etc/profile.d/*.sh; do
		test -r "$profile" && . "$profile"
	done
	unset profile
fi

# Unload our profile API functions
unset -f append_path

# Source global bash config, when interactive but not posix or sh mode
if test "$BASH" &&\
   test "$PS1" &&\
   test -z "$POSIXLY_CORRECT" &&\
   test "${0#-}" != sh &&\
   test -r /etc/bash.bashrc
then
	. /etc/bash.bashrc
fi

# Termcap is outdated, old, and crusty, kill it.
unset TERMCAP

# Man is much better than us at figuring this out
unset MANPATH

# add ~/.local/bin to the PATH
echo $PATH | grep -q "/home/tn/.local/bin:" || export PATH="/home/tn/.local/bin:$PATH"

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

# Exports
export XDG_CONFIG_HOME="$HOME/.config"
export SSH_AUTH_SOCK
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)

# Display timeout / sleep / poweroff
xset dpms 600 900 1200

# Keyboard rate
xset r rate 350 60

# Cursor
xsetroot -cursor_name left_ptr

# Restore pywal session
# Must be invoked before polybar launch
wal -R

# Startup apps
sxhkd &
ibus-daemon -xdr &
picom &
~/.config/polybar/launch.sh &

