# Custom Aliases

abbr rm "rm -i"
abbr cp "cp -i"
abbr mv "mv -i"
abbr mkdir "mkdir -p"
abbr h "history"
# prettier which
abbr which "type -a"

# sl with ^C
abbr sl "sl -e"
abbr sl 'echo "You have entered wrong !!"; neofetch'

# Copy Paste
abbr pbcopy 'xsel --clipboard --input'
abbr pbpaste 'xsel --clipboard --output'

# Vim NERDTree
abbr vimt 'vim "+NERDTree"'
abbr vimtg 'vim "+NERDTree" README.md'
abbr nvimt 'nvim "+NERDTree"'
abbr nvimtg 'nvim "+NERDTree" README.md'

# python3 shortcut
abbr py3 'python3'
abbr py 'python3'
abbr python 'python3'
abbr pip 'pip3'

# Json pretty
# abrr prettyjson "python -m json.tool"

# make a ping request
abbr req_ping 'ping -c 5 google.com'

# youtube-dl
abbr yt-dl-480 "yt-dlp -f 'bestvideo[height<=480]+bestaudio/best[height<=480]'"
abbr yt-music 'yt-dlp -x --audio-format mp3'

# minikube kubect
# abbr k "minikube kubectl"
