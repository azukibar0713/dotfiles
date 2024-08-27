;;; --------------------------------------------------------------------------------
;;; キーボード同時押しコマンド
;;; --------------------------------------------------------------------------------
(require 'key-chord)
(setq key-chord-two-keys-delay 0.04)
(key-chord-mode 1)
;; グローバルマップへの設定例 ex.jk同時押しでview-mode設定
;(key-chord-define-global "jk" 'view-mode)
;; メジャーモードへの設定例
;(key-chord-define emacs-lisp-mode-map "df" 'describe-function)

;;; --------------------------------------------------------------------------------
;;; recentf拡張
;;; http://d.hatena.ne.jp/rubikitch/20091224/recentf
;;;   diredで開いた履歴、ディレクトリも記録してくれる
;;;   helmでも表示される
;;; --------------------------------------------------------------------------------
;;; recentf.elの設定
(defmacro with-suppressed-message (&rest body)
  "Suppress new messages temporarily in the echo area and the `*Messages*' buffer while BODY is evaluated."
  (declare (indent 0))
  (let ((message-log-max nil))
    `(with-temp-message (or (current-message) "") ,@body)))

(require 'recentf)
(setq recentf-save-file "~/.emacs.d/.recentf")
(setq recentf-max-saved-items 1000)            ;; recentf に保存するファイルの数
(setq recentf-exclude '(".recentf"))           ;; .recentf自体は含まない
;;(setq recentf-auto-cleanup 'never)             ;; 保存する内容を整理
(run-with-idle-timer 30 t '(lambda ()          ;; 30秒ごとに .recentf を保存
   (with-suppressed-message (recentf-save-list))))
(require 'recentf-ext)

