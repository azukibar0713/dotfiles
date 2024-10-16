(require 'migemo)
(setq migemo-dictionary "C:/usr/cmigemo/dict/utf-8/migemo-dict") ; 外に渡すのでフルパスで設定する  https://grugrut.hatenablog.jp/entry/2015/04/emacs-migemo-on-windows
(setq migemo-command "cmigemo")
(setq migemo-options '("-q" "--emacs" "-i" "\a"))
(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
(load-library "migemo")
(migemo-init)


;;; -----------------------------
;;; progectile
;;; https://tech.camph.net/projectile-and-helm/
;;; プロジェクトは自動認識される.Gitレポジトリとか.
;;; - helm-projectile-find-file  ファイル検索
;;; -----------------------------
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

