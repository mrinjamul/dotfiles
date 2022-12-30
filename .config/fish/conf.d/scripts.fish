#       Env
# ----------------
# set environment variables
set -gx WORKDIR $HOME/Works/
set -gx PPDIR $HOME/Injamul/Private_project/
set -gx STORAGE /mnt/Storage/
set -gx CONFIG_PATH $XDG_DATA_HOME/.config
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PAGER less

#       Commands
# ----------------
# Exa is ls written in rust
if type -q exa
    # abbr ls "exa -lag --header"
    abbr lsa "exa -lag --header"
    abbr ls 'exa -G  --color auto --icons -s type'
    abbr l 'exa -G  --color auto --icons -a -s type'
    abbr ll 'exa -l --color always --icons -s type'
    abbr la 'exa -l --color always --icons -a -s type'
end

# Bat is cat in rust
if type -q bat
    function batp
        bat -pp --theme="Dracula" $argv
    end
    abbr catp 'batp'
end

# Func
# ----------------

# fish title
function fish_title
    set -q argv[1]; or set argv fish
    # Looks like ~/d/fish: git log
    # or /e/apt: fish
    echo (fish_prompt_pwd_dir_length=1 prompt_pwd): $argv;
end

# notify recent finished jobs
function notify
    set -l job (jobs -l -g)
    or begin; echo "There are no jobs" >&2; return 1; end

    function _notify_job_$job --on-job-exit $job --inherit-variable job
        echo -n \a # beep
        functions -e _notify_job_$job
    end
end

# Copy Paste
function pbcopy
    xsel --clipboard --input $argv
end

function pbpaste
    xsel --clipboard --output $argv
end


# fuck function
function fuck
    if pkill -9 $argv[2]
        echo ""
        echo " (╯°□°）╯︵"(echo $argv[2] | toilet -f term -F rotate)""
        echo ""
    end
end

# siliconc function
function siliconc
    silicon $argv[1] -o $argv[1].png
end

