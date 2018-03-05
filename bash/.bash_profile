#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes wzb-utils if it exists
if [ -d "/opt/wzb-utils" ] ; then
    PATH="/opt/wzb-utils:$PATH"
fi

# start the gnome-keyrring-daemon for commandline tools
if [ -n "$DESKTOP_SESSION" ]; then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
