# Starship
set -q XDG_DATA_HOME
  and set -gx CONFIG_PATH "$XDG_DATA_HOME/.config"

# Load Starship configuration.
starship init fish | source


