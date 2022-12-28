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
    abbr els 'exa -G  --color auto --icons -s type'
    abbr el 'exa -G  --color auto --icons -a -s type'
    abbr ell 'exa -l --color always --icons -s type'
    abbr elll "exa -lag --header"
    abbr ela 'exa -l --color always --icons -a -s type'
end

# Bat is cat in rust
if type -q bat
    abbr batp 'bat -pp --theme="Dracula"'
end

# Func
# ----------------

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


function notify
    set -l job (jobs -l -g)
    or begin; echo "There are no jobs" >&2; return 1; end

    function _notify_job_$job --on-job-exit $job --inherit-variable job
        echo -n \a # beep
        functions -e _notify_job_$job
    end
end
