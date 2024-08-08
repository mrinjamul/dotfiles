
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export GPG_TTY=$(tty)


source "$HOME/.cargo/env"

export PATH="/home/injamul/.local/share/solana/install/active_release/bin:$PATH"
