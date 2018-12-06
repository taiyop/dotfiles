# awsに接続するとき用の設定読み込み
if [ -f ~/.zshrc.aws ]; then
  source ~/.zshrc.aws
fi
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi

export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"' 
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

alias chrome="open -a Google\ Chrome.app"
alias firefox="open -a Firefox.app"
alias safari="open -a Safari.app"
alias mou="open -a Mou.app"
alias rubymine="open -a Rubymine.app"
alias be="bundle exec"
alias dc="docker-compose"

# git alias
alias gst="git status"
alias gco="git checkout"

#入力途中の履歴補完を有効化する
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

#入力途中の履歴補完
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

#インクリメンタルサーチの設定
#bindkey "^R" history-incremental-search-backward
#bindkey "^S" history-incremental-search-forward

#履歴のインクリメンタル検索でワイルドカード利用可能
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^S' history-incremental-pattern-search-forward

#ヒストリの一覧を読みやすい形に変更
HISTTIMEFORMAT="[%Y/%M/%D %H:%M:%S] "

# android sdk
export PATH=$PATH:/Users/taiyop/Library/Android/sdk/platform-tools

export PATH=/usr/local/bin/:/usr/local/share/npm/bin:$PATH

#export CC=/usr/bin/gcc-4.2

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# for docker
# export DOCKER_HOST=tcp://127.0.0.1:4243 
# if [ "`docker-machine status`" = "Running" ]; then
#  eval "$(docker-machine env default)"
# fi

# docker-machineの名残の影響でないとsudo必要になる
unset DOCKER_TLS_VERIFY
unset DOCKER_CERT_PATH
unset DOCKER_MACHINE_NAME
unset DOCKER_HOST

# yarn
export PATH=$PATH:/usr/local/Cellar/yarn/1.2.1/bin

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

## 補完候補を一覧表示
setopt auto_list

# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

#同時に起動したzshの間でヒストリを共有する
setopt share_history

# $HISTFILEに時間も記録
setopt extended_history

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/taiyop/Downloads/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/taiyop/Downloads/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/taiyop/Downloads/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/taiyop/Downloads/google-cloud-sdk/completion.zsh.inc'
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/opt/openssl/bin:$PATH"
