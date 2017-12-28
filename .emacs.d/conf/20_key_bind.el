;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 5.2 キーバインドの設定                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; global-set-key, define-key global-mapは同じ意味


;;; P80 C-hをバックスペースにする
;; 入力されるキーシーケンスを置き換える
;; ?\C-?はDELのキーシケンス
;(keyboard-translate ?\C-h ?\C-?)
(global-set-key "\C-h" 'delete-backward-char)

;;; P79-81 お勧めのキー操作
;; 先ほどとは異なりglobal-set-keyを利用
(global-set-key (kbd "C-m") 'newline-and-indent)
;; 折り返しトグルコマンド
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
;; "C-t" でウィンドウを切り替える。初期値はtranspose-chars
(define-key global-map (kbd "C-t") 'other-window)
