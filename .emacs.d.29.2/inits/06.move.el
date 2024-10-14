;;; --------------------------------------------------------------------------------
;;; 分割Window移動
;;; --------------------------------------------------------------------------------
;;; shift + 十字キーで分割バッファ移動.
;(setq windmove-wrap-around t)
;(windmove-default-keybindings)

;;; --------------------------------------------------------------------------------
;;; historyf.elのイメージとしては、Emacsで開いたファイルに対してブラウザの「戻る」ボタンと同じような履歴管理を実現するEmacs Lisp
;;; --------------------------------------------------------------------------------
;(require 'historyf)
;(global-set-key (kbd "<M-left>") 'historyf-back)
;(global-set-key (kbd "<M-right>") 'historyf-forward)

;;; 順方向の移動、逆方向の移動
(defun counter-other-window ()
  (interactive)
  (other-window -1))
(global-set-key (kbd "C-;") 'other-window)
(global-set-key (kbd "C-:") 'counter-other-window)


;;; --------------------------------------------------------------------------------
;;; 自動シンボルハイライト
;;; --------------------------------------------------------------------------------
(require 'highlight-symbol)
;;; x秒後自動ハイライトされるようになる
(setq highlight-symbol-idle-delay 0.5)
;;; 自動ハイライトをしたいならば
(add-hook 'prog-mode-hook 'highlight-symbol-mode)
(add-to-list 'auto-mode-alist '("\\.def\\'" . text-mode))
(add-hook 'text-mode-hook 'highlight-symbol-mode)
(define-key text-mode-map "\M-n" 'highlight-symbol-next)
(define-key text-mode-map "\M-p" 'highlight-symbol-prev)
;;; ソースコードにおいてM-p/M-nでシンボル間を移動
(add-hook 'prog-mode-hook 'highlight-symbol-nav-mode)
(define-key prog-mode-map "\M-n" 'highlight-symbol-next)
(define-key prog-mode-map "\M-p" 'highlight-symbol-prev)



;;; 今見えているwindowの一番上にカーソルを移動させる
(global-set-key (kbd "C-<") (lambda () (interactive)(move-to-window-line 0)))
;;; 今見えているwindowの一番上にカーソルを移動させる
(global-set-key (kbd "C->") (lambda () (interactive)(move-to-window-line -1)))


