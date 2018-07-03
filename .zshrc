# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git \
             catimg \
             common-aliases \
             compleat \
             dirhistory \
             sudo \
             systemd \
             tmux \
             vagrant \
             web-search \
#             colored-man-pages \
             colorize \
        )

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR='vim'

setopt append_history
setopt no_extended_history
setopt no_hist_beep
setopt no_prompt_bang
HISTSIZE=10000
LISTMAX=1000
SAVEHIST=10000

export TERM=xterm-256color
if [ -n "$TMUX" ]; then
	export TERM=screen-256color
fi

eval "$(fasd --init auto)"

GPG_TTY=$(tty)
export GPG_TTY

GPG_AGENT_INFO=/var/run/user/500/gnupg/S.gpg-agent:0:1
export GPG_AGENT_INFO

function pcd() {
    cd $HOME/j.gremwell/pentests/*/*$1*
}
