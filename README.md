git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

***** zshの設定 *****
以下のURLを参照。  
http://mollifier.hatenablog.com/entry/2013/02/22/025415

zshがshellリストに存在している確認  
cat /etc/shells

zshが存在していたら、ログインシェルをzshに変更  
chsh -s /bin/zsh

ターミナルを再起動して、psコマンドでログインシェルがzshに変更されている事を確認

***** node npmのインストール *****
以下のコマンドを実行する必要あり  
npm config get prefix
