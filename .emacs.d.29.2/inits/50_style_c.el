(add-hook 'c-mode-common-hook
          (lambda ()
            (c-set-style "bsd")                            ;;; (a)
            (setq c-basic-offset 4)                        ;;; (b)
            (setq tab-width 4)
            ;; 演算式が複数行にまたがるときのオフセット
            (c-set-offset 'statement-cont 'c-lineup-math)  ;;; (c)
            (setq indent-tabs-mode nil)     ; インデントは空白文字で行う（TABコードを空白に変換）
            ;; 行末のスペースやタブに色づけして警告する。
            (setq show-trailing-whitespace t)))            ;;; (d)


;; C++ style
(add-hook 'c++-mode-hook
          '(lambda()
             (c-set-style "stroustrup")
             (setq indent-tabs-mode nil)     ; インデントは空白文字で行う（TABコードを空白に変換）
             (c-set-offset 'innamespace 0)   ; namespace {}の中はインデントしない
             (c-set-offset 'arglist-close 0) ; 関数の引数リストの閉じ括弧はインデントしない
             (c-set-offset 'case-label '+)   ; case xx:をindet  ★init.elを再ロードしてcppファイル開きなおしても反映されなかった。emacs再起動で反映された.
             (c-set-offset 'inline-open 0)   ; インライン関数の括弧(class内で定義した関数).
             (c-set-offset 'inline-close 0)
             (setq tab-width 4)
             ;(c-set-offset 'statement-case-intro '+)
             ;(c-set-offset 'statement-case-open '+)
             ))

