# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git 
zsh-autosuggestions
web-search
dirhistory
thefuck
history
zsh-syntax-highlighting
yarn-autocompletions
zsh-history-substring-search
terraform
nomad
icd
)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias connect-to-staging="ssh -i /home/bukar/.ssh/ec2_access -NL 9004:stage-staging.cjyydec5tkts.eu-central-1.rds.amazonaws.com:3306 ec2-user@3.125.238.210 -vvv"
alias connect-to-prod="ssh -i /home/bukar/.ssh/ec2_access -NL 9002:prod.cjyydec5tkts.eu-central-1.rds.amazonaws.com:3306 ec2-user@3.125.238.210 -vvv"
alias connect-to-master="ssh -i /home/bukar/.ssh/ec2_access -NL 9003:dev.cjyydec5tkts.eu-central-1.rds.amazonaws.com:3306 ec2-user@3.125.238.210 -vvv"
alias start-nomad="sudo systemctl start nomad"
alias status-nomad="sudo systemctl status nomad"
alias restart-nomad="sudo systemctl restart nomad"
alias restart-network="sudo systemctl restart systemd-networkd"
alias status-consul="sudo systemctl status consul"
alias start-consul="sudo systemctl start consul"
alias log-selector-svc="nomad logs -f -job selector-svc | pino-pretty -i req,res"
alias log-legacy-svc="nomad logs -f -job legacy-svc | pino-pretty -i req,res"
alias log-router-svc="nomad logs -f -job router-svc | pino-pretty -i req,res"
alias log-federation-svc="nomad logs -f -job federation-svc | pino-pretty -i req,res"
alias log-render-template-svc="nomad logs -f -job render-template-svc | pino-pretty -i req,res"
alias log-recommendation-svc="nomad logs -f -job recommendation-svc | pino-pretty -i req,res"
alias log-user-input-svc="nomad logs -f -job user-input-svc | pino-pretty -i req,res"
alias log-convert-svc="nomad logs -f -job convert-svc | pino-pretty -i req,res"
alias log-import-svc="nomad logs -f -job import-svc | pino-pretty -i req,res"
alias log-product-svc="nomad logs -f -job product-svc | pino-pretty -i req,res"
alias log-publish-svc="nomad logs -f -job publish-svc | pino-pretty -i req,res"
alias log-analytics-svc="nomad logs -f -job analytics-svc | pino-pretty -i req,res"
alias log-theme-svc="nomad logs -f -job theme-svc | pino-pretty -i req,res"
alias log-flow-svc="nomad logs -f -job flow-svc | pino-pretty -i req,res"
alias log-auth-svc="nomad logs -f -job auth-svc | pino-pretty -i req,res"
alias update="sudo apt-get update -y"
alias upgrade="sudo apt-get upgrade -y"
alias dist-upgrade="sudo apt-get dist-upgrade -y"
alias remove="sudo apt-get autoremove -y"
alias clean="sudo apt-get autoclean -y"
alias connect-to-server="source /var/www/html/selectorsuite/production/guides/disaster-recovery.d/configure.sh"
alias ls="exa --icons"
alias yarn stop="yarn stop && rm .hash"
alias gpf="git push --force-with-lease"
alias setupKeyBoard="cd /home/bukar/Downloads && ./kbinit.sh"
# Key Bindings
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /home/bukar/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

change-worktree() {
  cd /var/www/html/selectorsuite/$1
  /var/www/html/selectorsuite/scripts/setup_worktree
}

connect-to-deployed() {
  ssh -i /home/bukar/.ssh/ec2_access -NL 9005:stage-$1.cjyydec5tkts.eu-central-1.rds.amazonaws.com:3306 ec2-user@3.125.238.210 -vvv
}

connect-to-infrastructure() {
  export NOMAD_ADDR=https://nomad.corp.foxbase.de
  export NOMAD_TOKEN=cadbf587-de12-a79e-3eec-70fec11a1a30
}

connect-to-staging-infrastructure() {
  export NOMAD_ADDR=https://nomad.stagedr.foxbase.de/
  export NOMAD_TOKEN=eaf6b50b-fc69-3531-5ab4-a9373f6dbfc6
}

restart-service() {
  for alloc in $(nomad job allocs -namespace=$1  $2|tail -n+2|awk '{ print $1 }'); do nomad alloc restart -namespace=$1 $alloc; done
}

export EDITOR=nvim

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/nomad nomad
eval $(thefuck --alias)
