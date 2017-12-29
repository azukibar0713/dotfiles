(add-hook 'python-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq indent-level 4)
             (setq python-indent 4)
             (setq tab-width 4)
             (package-initialize)       ; なぜかこれが無いとelpyが動かない
             (elpy-enable)
             (elpy-mode)
             ))

;;; elpy mode
;; pythonのrope、jediのパッケージを入れておくこと
;; 公式はさらにflake8、importmagic、autopep8、yapfを推奨している
(add-hook 'elpy-mode-hook
          '(lambda ()
             (elpy-use-ipython)
             ;; quickrunをC-cC-cに設定
             (define-key elpy-mode-map "\C-c\C-c" 'quickrun)
             ;; company-mode + rope/jediを使うためautocompletionをオフ
             (auto-complete-mode -1)
                                        ; companyによる補完のキーマップを設定
             (define-key company-active-map (kbd "\C-n") 'company-select-next)
             (define-key
               company-active-map (kbd "\C-p") 'company-select-previous)
             (define-key
               company-active-map (kbd "\C-d") 'company-show-doc-buffer)
             (define-key
               company-active-map (kbd "<tab>") 'company-complete)
                          ))
