# global environment variables

set -x FZF_DEFAULT_COMMAND 'ag -g "" --hidden --ignore .git'

# git extensions
set -x PATH $HOME/.git/scripts $PATH

# GO
set -x PATH $PATH /usr/local/go/bin
set -x PATH $PATH $HOME/go/bin
set -x GOPATH "$HOME/go"
set -x GOBIN "$HOME/go/bin"

# yarn
set -x PATH $HOME/.yarn/bin $HOME/.config/yarn/global/node_modules/.bin $PATH

# Dart
set -x PATH $PATH /usr/lib/dart/bin

# Flutter
set -x PATH $PATH $HOME/development/flutter/bin

# Java
set -x JAVA_HOME "/opt/jdks"
set -x PATH $JAVA_HOME $PATH
set -x PATH $JAVA_HOME/bin $PATH

# for android development
set -x ANDROID_HOME "/home/injamul/Android/Sdk"
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/platform-tools

# User path
set -x PATH $HOME/.bin $PATH
set -x PATH $HOME/bin $PATH

# GPG & Git
set -x GPG_TTY (tty)



