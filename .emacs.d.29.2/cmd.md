# 設定
## 設定の反映
- `eval-last-sexp(C-x C-e)`  sはS-expressionsの略
  - S式の閉じ括弧の後ろにカーソルを合わせて実行すると、カーソルより前の指揮を評価する
  - いつでも実行できるので、init.elに記述したあとにすぐ実行できる
- `M-x eval-region RET` カレントバッファをすべて評価
- `M-x eval-region RET` リージョン選択範囲を評価

# キーバインド
- 種類
  - グローバルマップ
    - すべてのバッファで有効
  - カレントバッファローカルマップ
    - 特定のバッファで有効。フックと組み合わせて使う。
― 優先順位
  - マイナーモード
  - カレントバッファローカルキーマップ
  - メジャーモード
  - グローバルマップ
  - 見つからなかったらエラーを返す