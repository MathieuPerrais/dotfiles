# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Load aliases specific file
source "./.aliases"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel10k/powerlevel10k"

function o() {
  z $1 && open .
}

# Disabling warning for Brew installed commands on Catalina
ZSH_DISABLE_COMPFIX="true"


# Add path to Homebrew managed Python, Ruby, Go etc.. bins before all $PATH (don't want them managed by OS X)
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export GOPATH="$(go env GOPATH)"
export GOROOT="$(go env GOROOT)"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

. ~/.oh-my-zsh/z/z.sh

# Xcode via @orta
openx(){ 
  if test -n "$(find . -maxdepth 1 -name '*.xcworkspace' -print -quit)"
  then
    echo "Opening workspace"
    open *.xcworkspace
    return
  else
    if test -n "$(find . -maxdepth 1 -name '*.xcodeproj' -print -quit)"
    then
      echo "Opening project"
      open *.xcodeproj
      return  
    else
      echo "Nothing found"
    fi
  fi
}

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git xcode python)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred default EDITOR for local and remote sessions (VSCode / vim)
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

# Powerline (setup instructions: https://github.com/b-ryan/powerline-shell)
function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi
# end Powerline


# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh