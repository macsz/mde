# macsz dev environment

* Install myrepos `sudo apt install myrepos`
* Install stow `sudo apt install stow`
* Install zsh `sudo apt install zsh`
* Install antigen `mkdir -p ~/bin/ && curl -L git.io/antigen > bin/antigen.zsh`
* Install neovim
  ```bash
  # Linux
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
    sudo rm -rf /opt/nvim
    sudo tar -C /opt -xzf nvim-linux64.tar.gz

    # Mac (ARM)
    curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-arm64.tar.gz
    tar xzf nvim-macos-arm64.tar.gz
    ./nvim-macos-arm64/bin/nvim
  ```
  