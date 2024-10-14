# 最初に設定すること
## 実行ファイル
### Windows
Windowsパスの通っているフォルダに各種実行ファイルをコピーする\
・emacs.d/bin/win以下をemacsフォルダのbin (ex. "C:\NotInstalledSoft\emacs-29.2_1\bin")
・"C:\Program Files\Git\usr\bin"
が考えられるが、Gitに元々あるやつはそのままつかって、それ以外はemacs以下がいいかも

- cmigemo
  - cmigemo.exe, migemo.dll, pluginフォルダ(いらないかも)をbinにコピーする
  - inits/12_search.el
    - フルパスで辞書の設定をする
    - migemoのコメントアウトを外す(migemoの設定ができていないと、isearchがうまく動かなくなるので)
- grep
  - Gitインストールした後に、環境変数に"C:\Program Files\Git\usr\bin" を追加
- GNU GLOBAL
 




