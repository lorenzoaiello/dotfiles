# Setup Instructions
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/powerline/fonts.git ~/Downloads/fonts && ~/Downloads/fonts/install.sh
# Update iTerm to use Powerline Font (Profiles > Text > Change Font > Mslo LG S DZ Regular for Powerline)

export ZSH="/Users/lorenzo/.oh-my-zsh"

export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  common-aliases
  git
  osx
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# POWERLEVEL9K CONFIG
POWERLEVEL9K_PROMPT_ADD_NEW_LINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir_writable dir rbenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs time)

# Go Development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# Utility Aliases
alias c='clear'
alias xcode='open -a /Applications/Xcode.app'

# Infrastructure Related Aliases
alias ssm='aws ssm start-session --target'

# Code Related Aliases
alias pycov="py.test --disable-pytest-warnings --cov=api"
alias gocov="go test ./... -coverprofile cover.out; go tool cover -html=cover.out -o cover.html"
alias java8="/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home/bin/java"
alias g="git"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

