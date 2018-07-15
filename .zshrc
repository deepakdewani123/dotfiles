# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/deepakdewani1/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  # package       # Package version
  # node          # Node.js section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  docker        # Docker section
  aws           # Amazon Web Services section
  pyenv         # Pyenv section
  kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
)
SPACESHIP_USER_SHOW=always
SPACESHIP_BATTERY_THRESHOLD=20
SPACESHIP_CHAR_SYMBOL="❯ "


# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# --- Plugins

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

# --- Source

source $ZSH/oh-my-zsh.sh
source ~/.env
source ~/.alias
source ~/.path

alias gc=git commit
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# .zshrc
# autoload -U promptinit; promptinit
# prompt pure

# setting globale editor as nano
# export EDITOR=/usr/bin/nano


local host_name="%{$fg[cyan]%}$(whoami)"
local path_string="%{$fg[yellow]%}%1~/"
local prompt_string="❯"

# Make prompt_string red if the previous command failed.
local return_status="%(?:%{$fg[magenta]%}$prompt_string:%{$fg[red]%}$prompt_string)"

NEWLINE=$'\n'

PROMPT='${host_name} %{$reset_color%}in ${path_string} %{$reset_color%}$(git_prompt_info)${NEWLINE}${return_status} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}on %{$fg_bold[blue]%}(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# autoload -U promptinit; promptinit
# prompt pure