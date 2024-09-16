source ~/bin/antigen.zsh

## Load the oh-my-zsh's library.
antigen use oh-my-zsh

## Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

## Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

## Load the theme. `refined` is a good alternative to powerlevel10k.
# antigen theme refined
antigen theme romkatv/powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## Tell Antigen that you're done.
antigen apply

## Update paths
export PATH="$PATH:/opt/nvim-linux64/bin"

