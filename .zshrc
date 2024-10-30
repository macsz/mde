source ~/bin/antigen.zsh

## Load the oh-my-zsh's library.
antigen use oh-my-zsh

## Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

## Syntax highlighting, autocomplete and autosuggestions bundles.
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244"
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
#antigen bundle marlonrichert/zsh-autocomplete@main

## Other bundles
antigen bundle "MichaelAquilina/zsh-you-should-use"
antigen bundle darvid/zsh-poetry

## Load the theme. `refined` is a good alternative to powerlevel10k.
# antigen theme refined
antigen theme romkatv/powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## Tell Antigen that you're done.
antigen apply

## Neovim
export PATH="$PATH:/opt/nvim-linux64/bin"
alias vim="nvim"
alias v="nvim"
alias vimdiff="nvim -d"
export EDITOR="nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2024-10-14 22:01:11
export PATH="$PATH:/home/mac/.local/bin"

