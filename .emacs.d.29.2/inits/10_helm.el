(require 'helm)
(helm-mode 1)

;;; 現在のシンボルをデフォルトのクエリにする
(setq helm-ag-insert-at-point 'symbol)

;; helm: あいまい検索有効
(setq helm-M-x-fuzzy-match t)
(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match    t)

(define-key global-map (kbd "C-]") 'helm-mini)
(define-key global-map (kbd "M-x")     'helm-M-x)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "M-y")     'helm-show-kill-ring)
;; (define-key global-map (kbd "C-c i")   'helm-imenu)

;; helm-split-window-inside-p            t  ; 画面分割しても同じバッファ内にhelmのバッファを表示
(setq helm-move-to-line-cycle-in-source nil)  ; これをやらないとC-nを押してもrecentfに移れなかった
;;(setq helm-ff-search-library-in-sexp t)  ; よく分からんがライブラリの中も検索するみたいな
;;(setq helm-echo-input-in-header-line t)  ; helmのバッファの上部にコンソールの内容を表示

(require 'helm-gtags)
;;(helm-gtags-mode t)
;; Enable helm-gtags-mode
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(setq helm-gtags-mode-hook
      '(lambda ()
         (local-unset-key "\C-t")
                                        ; 文脈から判断してジャンプ
         (local-set-key "\C-t\C-t" 'helm-gtags-dwim)
                                        ; 定義元へ
                                        ;        (local-set-key "\C-t\C-d" 'helm-gtags-find-tag)
         (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
                                        ; 参照元へ
                                        ;        (local-set-key "\C-t\C-r" 'helm-gtags-find-rtag)
         (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
                                        ; 変数の定義元/参照先へ
                                        ;        (local-set-key "\C-t\C-s" 'helm-gtags-find-symbol)
         (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
                                        ;        (local-set-key (kbd "C-t") 'helm-gtags-pop-stack)
         (local-set-key (kbd "C-z") 'helm-gtags-pop-stack)
                                        ; 前のバッファへ
         (local-set-key "\C-t\C-p" 'helm-gtags-previous-history)
                                        ; 次のバッファへ
         (local-set-key "\C-t\C-n" 'helm-gtags-next-history)
                                        ; ファイルへ
         (local-set-key "\C-t\C-f" 'helm-gtags-find-file)
         ))

(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)

; window最小化が勝つので、globalで設定してしまう.
(global-set-key (kbd "C-z") 'helm-gtags-pop-stack)
(global-set-key (kbd "C-x m") 'helm-all-mark-rings)  ; ctrl+spaceでマークを付けた場所にジャンプできる.

; ripgrepをhelm化
(setq helm-ag-base-command "rg --vimgrep --no-heading")

;;; ag以外の検索コマンドも使える
;; (setq helm-ag-base-command "grep -rin")
;; (setq helm-ag-base-command "csearch -n")
;; (setq helm-ag-base-command "pt --nocolor --nogroup")
;; (setq helm-ag-base-command "rg --vimgrep --no-heading")
;;; 現在のシンボルをデフォルトのクエリにする
(setq helm-ag-insert-at-point 'symbol)
;;; C-M-gはちょうどあいてる
(global-set-key (kbd "C-M-g") 'helm-ag)
;(global-set-key (kbd "C-M-k") 'backward-kill-sexp) ;推奨





;(require 'helm-ls-git)
;(key-chord-define-global "ls" 'helm-ls-git-ls)

(key-chord-define-global "hs" 'helm-swoop)
(key-chord-define-global "hi" 'helm-imenu)






;; Emulate `kill-line' in helm minibuffer
(setq helm-delete-minibuffer-contents-from-point t)
(defadvice helm-delete-minibuffer-contents (before helm-emulate-kill-line activate)
  "Emulate `kill-line' in helm minibuffer"
  (kill-new (buffer-substring (point) (field-end))))

