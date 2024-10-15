;; -----
;; Redo
;; -----
(require 'undo-tree)
(global-undo-tree-mode t)
(global-set-key (kbd "C-.") 'undo-tree-redo)

;; C-hをバックスペースにする.
(global-set-key "\C-h" 'delete-backward-char)

;; "C-t" でウィンドウを切り替える。初期値はtranspose-chars
;(define-key global-map (kbd "C-t") 'other-window)

;; 折り返しトグルコマンド
;(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)

;;; --------------------------------------------------------------------------------
;;;Ctrl+Enterで矩形選択開始
;;; --------------------------------------------------------------------------------
(cua-mode t)
(setq cua-enable-cua-keys nil)

;;; --------------------------------------------------------------------------------
;; http://emacs.rubikitch.com/undohist/
;;undohist.el はEmacsの undoを永続化 します。
;;通常のEmacsはファイルバッファを閉じると
;;undoの履歴もクリアされるので戻せなくなってしまいます。
;;つまり、ファイルを閉じてもEmacsを再起動してもC-/で元に戻せます。
;;; --------------------------------------------------------------------------------
;(require 'undohist)
;(undohist-initialize)
;;; 永続化を無視するファイル名の正規表現
;(setq undohist-ignored-files
;      '("/tmp/"))
;;; NTEmacsだと動かないらしいので再定義
;;; http://d.hatena.ne.jp/Lian/20120420/1334856445
;(when (eq system-type 'windows-nt)
;  (defun make-undohist-file-name (file)
;    (setq file (convert-standard-filename (expand-file-name file)))
;    (if (eq (aref file 1) ?:)
;        (setq file (concat "/"
;                           "drive_"
;                           (char-to-string (downcase (aref file 0)))
;                           (if (eq (aref file 2) ?/)
;                               ""
;                             (if (eq (aref file 2) ?\\)
;                                 ""
;                               "/"))
;                           (substring file 2))))
;    (setq file (expand-file-name
;                (subst-char-in-string
;                 ?/ ?!
;                 (subst-char-in-string
;                  ?\\ ?!
;                  (replace-regexp-in-string "!" "!!"  file)))
;                undohist-directory))))


;(require 'multiple-cursors)
;(global-set-key (kbd "M->") 'mc/mark-next-like-this)
;(global-set-key (kbd "M-<") 'mc/mark-previous-like-this)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-}") 'mc/mark-next-like-this)
(global-set-key (kbd "C-{") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-*") 'mc/mark-all-like-this)

;;; --------------------------------------------------------------------------------
;;; wgrep.el は、 M-x grep や M-x ag の結果を編集して
;;; その結果をファイルに反映させるものです。
;;; wdired はdiredの編集結果をファイル名に反映させるように、
;;; wgrep はgrepの編集結果をファイル内容に反映させます。
;;; M-x grep
;;; eでwgrep-modeにする
;;; *grep*バッファを編集する
;;; C-c C-c (C-x C-s)でファイルに反映！
;;;C-c C-kで編集を破棄します。
;;; --------------------------------------------------------------------------------
;;; eでwgrepモードにする
(setf wgrep-enable-key "e")
;;; wgrep終了時にバッファを保存
(setq wgrep-auto-save-buffer t)
;;; read-only bufferにも変更を適用する
(setq wgrep-change-readonly-file t)

; パッケージwgrepには、 wgrep-ag.el 、 wgrep-pt.el 、
; wgrep-ack.el 、 wgrep-helm.el も同梱されているので、
; M-x ag の結果なども編集できます。
