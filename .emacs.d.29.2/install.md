- Window
  - grepのコマンドが見つからない
    - 環境変数に
    "C:\Program Files\Git\usr\bin" を追加
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

## ろーど
- init-loader.el
  - "inits"フォルダから.elフォルダを順番に自動読み込みする
  - フォルダは自分でつくる
- initsフォルダの中身
  - 03_themes.el
    - 見た目に関する設定
- マニュアルでロードする場合
  - conf以下にinit-perl.elがあったら、 (load "init-peal"); 拡張子は不要


## 編集
- undo-tree
  - redo+は新しいバージョンだと動かないらしい
    - https://qiita.com/takc923/items/c3d64b55fc4f3a3b0838


## helm
- helm
  - `package install helm`