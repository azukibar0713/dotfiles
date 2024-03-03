- Window
  - grepのコマンドが見つからない
    - 環境変数に"C:\Program Files\Git\usr\bin" を追加
  - 各種バイナリ
    - GNU GLOBAL
      - readmeにフォルダ構造ごとコピーしろと書いてあったので、Git/usr/binのしたに丸ごとおいて、binにpathを通した
      - 環境変数設定してpower shellではすぐにglobal.exeが見えていたが、emacsからは一度再起動する必要があった
    - ripgrepなどがない
    - dotfiles/bin/winにおいてある
    - "C:\Program Files\Git\usr\bin"にコピーする
- .emacs.d
  - init.el : 設定ファイル
  - conf : 分割設定用ディレクトリ
  - elisp : Elispインストール用ディレクトリ
  - elpa : ELPA用のディレクトリ
  - public_repos : 公開レポジトリから拡張機能をチェックアウトするディレクトリ
  
- package
  - init.elに設定を記載する

- ELPAやテーマを利用した時に自動的に追加される設定を .emacs.d/custom.elファイルに書き込まれるようにする


# ここからpackageのインストール作業
`M-x list-packages`をつかってインストールする

## ロード
- init-loader.el
  - "inits"フォルダから.elフォルダを順番に自動読み込みする
  - フォルダは自分でつくる
- initsフォルダの中身
  - 03_themes.el
    - 見た目に関する設定
- マニュアルでロードする場合
  - conf以下にinit-perl.elがあったら、 (load "init-peal"); 拡張子は不要

## 検索
- ripgrep
  - バイナリ
    - Windows
      - https://github.com/BurntSushi/ripgrep/releases のripgrep-14.1.0-x86_64-pc-windows-msvc

## 編集 (02_edit.el)
- undo-tree
  - redo+は新しいバージョンだと動かないらしい
    - https://qiita.com/takc923/items/c3d64b55fc4f3a3b0838

## helm
- helm
  - `package install helm`
    - **ここでhelmの設定をすると、操作がスムーズになる**
  - `package install helm-gtags`
- helm ag
  - カレントバッファがあるディレクトリ以下をgrep

### カスタマイズ
- mini bufferでC-nしても、recentfに移動できない
  - helm-move-to-line-cycle-in-sourceをM-x customize variableで`Toggle on (non-nil)`のToggleをクリックして`Toggle off (nil)`表示にする。そのあと、`Apply and Save`すると移動できるようになる
  - 恒久的には`(setq helm-move-to-line-cycle-in-source nil)`逆の気がするのだが。。