export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"

ZSH_THEME="robbyrussell"

plugins=(
	git 
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

#  aliases
alias zshconfig="nvim ~/.zshrc"
alias applyzsh="source ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias c="clear"
alias ls="eza --color=always --long --no-filesize --icons=always --no-time"
