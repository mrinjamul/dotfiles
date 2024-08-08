# Custom Aliases

# abbr cls "clear"
abbr rm "rm -i"
abbr cp "cp -i"
abbr mv "mv -i"
abbr mkdir "mkdir -p"
abbr h "history"
abbr hc "history -c"
# prettier which
abbr which "type -a"

# sl with ^C
abbr sl "sl -e"
abbr sl 'echo "You have entered wrong !!"; neofetch'

# Copy Paste
# abbr pbcopy 'xsel --clipboard --input'
# abbr pbpaste 'xsel --clipboard --output'

# Vim NERDTree
abbr vimt 'vim "+NERDTree"'
abbr vimtg 'vim "+NERDTree" README.md'
abbr nvimt 'nvim "+NERDTree"'
abbr nvimtg 'nvim "+NERDTree" README.md'

# python3 shortcut
abbr py3 'python3'
abbr py 'python3'

# Git
abbr ga 'git add'
abbr gaa 'git add -A'
abbr gbl 'git blame -b -w'
abbr gcb 'git checkout -b'
abbr gco 'git checkout'
abbr gd 'git diff'
abbr gdca 'git diff --cached'
abbr gfa 'git fetch -a -p'
abbr gfo 'git fetch origin'
abbr grv 'git remote -v'
abbr gsb 'git status -sb'


# Json pretty
# abrr prettyjson "python -m json.tool"

# make a ping request
abbr req_ping 'ping -c 5 google.com'

# youtube-dl
abbr yt-dl-480 "yt-dlp -f 'bestvideo[height<=480]+bestaudio/best[height<=480]'"
abbr yt-music 'yt-dlp -x --audio-format mp3'

# minikube kubect
# abbr k "minikube kubectl"
