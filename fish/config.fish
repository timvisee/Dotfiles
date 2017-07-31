# Fish shell configuration

# Source other configuration files
source ~/.config/fish/alias.fish
source ~/.config/fish/nvm.fish
source ~/.config/fish/prompt.fish
source ~/.config/fish/transfer.fish

# Add rust binaries to the path
if test -d "$HOME/.cargo/bin"
    set PATH $HOME/.cargo/bin $PATH
end

# Configure Go's environment
if test -d "/usr/lib/go"
    set -x GOROOT /usr/lib/go
    set -x GOPATH $HOME/.go
    set -x PATH $PATH $GOROOT/bin
end
