# Enable p10k instant prompt. Stay close to the top of ~/.zshrc. Init code that
# may require console input must go above this block; everything else may go below.
source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"

# export ZSH="$HOME/.oh-my-zsh"
# source $ZSH/oh-my-zsh.sh
setopt alwaystoend
setopt autocd
setopt autopushd
setopt completeinword
setopt extendedhistory
setopt noflowcontrol
setopt histexpiredupsfirst
setopt histignoredups
setopt histignorespace
setopt histverify
setopt interactivecomments
setopt longlistjobs
setopt pushdignoredups
setopt pushdminus
setopt sharehistory

# Lazy load pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/shims:$PATH"
# function pyenv() {
#     unset -f pyenv
#     eval "$(command pyenv init -)"
#     # eval "$(command pyenv virtualenv-init -)"
#     pyenv $@
# }
export PATH="~/.local/bin:$PATH"

# WIDGETS --------------------------------------------------------------------
function tmux_navigate() {
    [[ -n $TMUX ]] && tmux select-pane -$1 >/dev/null 2>&1
}

tmux_navigate_left()  { tmux_navigate L }
tmux_navigate_down()  { tmux_navigate D }
tmux_navigate_up()    { tmux_navigate U }
tmux_navigate_right() { tmux_navigate R }

zle -N tmux_navigate_left
zle -N tmux_navigate_down
zle -N tmux_navigate_up
zle -N tmux_navigate_right

# BINDKEY ---------------------------------------------------------------------
bindkey -v
bindkey "^R" history-incremental-search-backward
bindkey '^H' tmux_navigate_left
bindkey '^J' tmux_navigate_down
bindkey '^K' tmux_navigate_up
bindkey '^L' tmux_navigate_right

# FUNCTIONS -------------------------------------------------------------------

function autobal() {
    yabai -m config auto_balance $1
}

# ALIASES ---------------------------------------------------------------------
# OH MY ZSH ------------------------
alias -- -='cd -'
alias ...='../..'
alias ....='../../..'
alias diff='diff --color'
alias acki='ack -i'
alias afind='ack -l'
alias md='mkdir -p'
alias rd='rmdir'

# GENERAL --------------------------
# alias sql="export PYTHONWARNINGS='ignore';litecli"
# alias open="open -R ."
alias fdd='fd --type d'
alias fdf='fd --type f'
alias c="clear"
alias v="nvim"
alias b="brew"
alias g="git"
alias zrc="v ~/.config/zsh/.zshrc"
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox}'
alias grepf='grep -F'
alias lsd='lsd --group-dirs first'
alias ls='lsd'
alias l='ls -lh'
alias la='ls -lAh'
alias la.='ls -lAh | awk "\$9 ~ /^\./"'
alias lsa='ls -a'
alias t='lsd --tree --ignore-glob __pycache__ --ignore-glob node_modules --ignore-glob "*.br" --ignore-glob "*.gz"'
alias n='echo "\n\n––––––––––––––––––––––––––––––––––\n\n"'
alias path='echo $PATH | tr ":" "\n"'
# alias black='black --skip-string-normalization'
alias ncu='npx npm-check-updates -u'
alias loaddotenv='set -a; source .env; set +a'

# TMUX -----------------------------
alias tm="tmux"
alias tma="tmux a"
# alias tmat="tmux a -t"
alias tmnew="tmux new -s"
# alias tmrc="v ~/.config/tmux/tmux.conf"
alias tmls="tmux ls"

# PYTHON --------------------------
alias py="python"
alias ppath="export PYTHONPATH=$PWD"
# alias pe="pyenv"
# alias pv="pyenv versions | grep -v '/envs/'"
# alias pev="pyenv virtualenv"
# alias pevd="pyenv virtualenv-delete"
alias act="source .venv/bin/activate"
# alias pipi="pip install"
# alias pipclear="pip freeze | xargs pip uninstall -y"

# DIRECTORIES ---------------------
alias .conf="cd ~/.config"
alias .v="cd ~/.config/nvim && v"
alias .desk="cd ~/Desktop"

# PyPI --------------------------
# alias pyupload="rm -r dist; hatchling build; twine upload dist/*"
# alias testpyupload="rm -r dist; py -m build; twine upload --repository testpypi dist/*"
# alias gtestpyget="py -m pip install --index-url https://test.pypi.org/simple/ --no-deps --upgrade"
# alias testpyget="pip install --index-url https://test.pypi.org/simple/ --no-deps --upgrade"

export EDITOR=nvim
export TERM=alacritty
export BAT_THEME="Coldark-Dark"
export KEYTIMEOUT=1


# FZF -------------------------------------------------------------------------
export FZF_COMPLETION_TRIGGER=';'
export FZF_DEFAULT_COMMAND='fd --type f --exclude .js.br --exclude .js.gz'
# Customize fzf completion for paths (used by vim **<Tab>)
_fzf_compgen_path() {
  fd --exclude .js.br --exclude .js.gz . "$1"
}
# Customize fzf completion for directories (used by cd **<Tab>)
_fzf_compgen_dir() {
  fd --type d --exclude .js.br --exclude .js.gz . "$1"
}
source <(fzf --zsh)


# ZSH PLUGINS -----------------------------------------------------------------
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# This must be at the end
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
