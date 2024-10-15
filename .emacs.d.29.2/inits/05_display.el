;;; --------------------------------------------------------------------------------
;;; Windowの表示系
;;; --------------------------------------------------------------------------------
;; 左下に表示されている改行コードの表示をわかりやすくする.
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")
;; メニューバーを消す
(menu-bar-mode -1)
;; ツールバーを消す
(tool-bar-mode -1)
;; 列数を表示する
(line-number-mode t)
(column-number-mode t)
;; ファイルサイズを表示
(size-indication-mode t)
;\左に行番号表示
(require 'linum)
(global-linum-mode)
;;; P90 タイトルバーにファイルのフルパスを表示
(setq frame-title-format "%f")
;;; 現在の関数名をモードラインに表示
(which-function-mode 1)
;;; 現在行の強調
;(global-hl-line-mode t) ; highlight-symbolの色が見えなくなるのでやめた

;;; --------------------------------------------------------------------------------
;;; 強調表示
;;; --------------------------------------------------------------------------------
;; P101 括弧の対応関係のハイライト
;; paren-mode：対応する括弧を強調して表示する
(setq show-paren-delay 0) ; 表示までの秒数。初期値は0.125
(show-paren-mode t) ; 有効化
;; parenのスタイル: expressionは括弧内も強調表示
(setq show-paren-style 'expression)

;;; --------------------------------------------------------------------------------
;;; 行末のタブ、スペースを可視化.
;;; --------------------------------------------------------------------------------
(require 'whitespace)
(setq whitespace-style '(face           ; faceで可視化
                         trailing       ; 行末
                         tabs           ; タブ
;;                         empty          ; 先頭/末尾の空行
                         space-mark     ; 表示のマッピング
                         tab-mark
                         ))

(setq whitespace-display-mappings
      '((tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))
(global-whitespace-mode 1)

;;; --------------------------------------------------------------------------------
;;; Window分割
;;; --------------------------------------------------------------------------------
;;; C-x 1 でWindowを結合。もう一度実行するともとの分割にもどる.
(require 'zoom-window)
(global-set-key (kbd "C-x 1") 'zoom-window-zoom)
(setq zoom-window-mode-line-color "DarkGreen")


(add-hook 'c++-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'c-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'scheme-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'lisp-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'python-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'ruby-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))
(add-hook 'xml-mode-hook
          '(lambda ()
             (hs-minor-mode 1)))

;(define-key global-map (kbd "C-\\") 'hs-toggle-hiding)
(key-chord-define-global "hd" 'hs-toggle-hiding) ; カレントブロックの表示、非表示切り替え
; 他コマンドは https://ayatakesi.github.io/emacs/25.2/html/Hideshow.html
; 全部系：hs-hide-all, hs-show-all

;;; --------------------------------------------------------------------------------
;;; anzu
;;; --------------------------------------------------------------------------------
; 概要: 検索コマンド実行中に, モードラインにマッチするバッファ内の語数と現在のマッチ位置を表示する
(when (require 'anzu)
  (global-anzu-mode +1))
