# awsに接続するとき用の設定読み込み
source ~/.zshrc.aws
source ~/.zshrc.local

export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"' 
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

alias chrome="open -a Google\ Chrome.app"
alias firefox="open -a Firefox.app"
alias safari="open -a Safari.app"
alias mou="open -a Mou.app"
alias rubymine="open -a Rubymine.app"
alias be="bundle exec"

# git alias
alias gst="git status"
alias gco="git checkout"

if [ "`boot2docker status`" = "running" ]; then
  $(boot2docker shellinit)
fi


# export PATH=/usr/local/bin:/usr/local/share/npm/bin:$PATH
export PATH=/usr/local/share/npm/bin:/usr/lobal/bin:$PATH

#nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init - zsh)"
#export CC=/usr/bin/gcc-4.2

# for docker
export DOCKER_HOST=tcp://127.0.0.1:4243 

# pyenv
# export PATH="$HOME/.pyenv/shims:$PATH"
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
export PATH=${PYENV_ROOT}/bin:$PATH
  eval "$(pyenv init -)"
fi


eval `ssh-agent -k`
#以下のサイトを参考にした。
#https://gist.github.com/mollifier/4979906

#色を使用出来るようにする
autoload -Uz colors
colors

# 補完機能を有効にする
autoload -Uz compinit
compinit

# cd したら自動的にpushdする
setopt auto_pushd
#重複したディレクトリを追加しない
setopt pushd_ignore_dups

# グローバルエイリアス
# alias -g L='| less'

# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# vim　風キーバインドにする
bindkey -v

#履歴検索のショートカット
bindkey "^p" up-line-or-history
bindkey "^n" down-line-or-history

# 言語設定
export LANG=ja_JP.UTF-8

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

#フローコントロールを無効にする
#ctrl+sでflowcontrolでフリーズみたくなるから
setopt no_flow_control

# コマンドラインなどでも'#以降をコメントとして扱うように設定
setopt interactive_comments

# beepを無効
setopt no_beep

# cdしたら自動的にpushdする
setopt auto_pushd

# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

#同時に起動したzshの間でヒストリを共有する
setopt share_history

#同じコマンドをヒストリに残さない
#setopt hist_ignore_all_dups

#ヒストファイルに保存するとき、すでに重複したコマンドがあったら古い方を削除する
setopt hist_save_nodups

#スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

#ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

#補完候補が複数あるときに自動的に一覧表示する
setopt auto_menu

##############################################################
# エイリアス

alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

alias mkdir='mkdir -p'

########################################
# OS 別の設定
case ${OSTYPE} in
    darwin*)
        #Mac用の設定
        export CLICOLOR=1
        alias ls='ls -G -F'
        ;;
    linux*)
        #Linux用の設定
        ;;
esac

export PATH=/usr/local/bin:$PATH
