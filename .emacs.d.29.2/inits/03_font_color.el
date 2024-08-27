(load-theme 'manoj-dark t)

;;; P97-99 フォントの設定
(when (eq window-system 'ns)
  ;; asciiフォントをMenloに
  (set-face-attribute 'default nil
                      :family "Menlo"
                      :height 120)
  ;; 日本語フォントをヒラギノ明朝 Proに
  (set-fontset-font
   nil 'japanese-jisx0208
   ;; 英語名の場合
   ;; (font-spec :family "Hiragino Mincho Pro"))
   (font-spec :family "ヒラギノ明朝 Pro"))
  ;; ひらがなとカタカナをモトヤシーダに
  ;; U+3000-303F	CJKの記号および句読点
  ;; U+3040-309F	ひらがな
  ;; U+30A0-30FF	カタカナ
  (set-fontset-font
   nil '(#x3040 . #x30ff)
   (font-spec :family "NfMotoyaCedar"))
  ;; フォントの横幅を調節する
  (setq face-font-rescale-alist
        '((".*Menlo.*" . 1.0)
          (".*Hiragino_Mincho_Pro.*" . 1.2)
          (".*nfmotoyacedar-bold.*" . 1.2)
          (".*nfmotoyacedar-medium.*" . 1.2)
          ("-cdac$" . 1.3))))

(when (eq system-type 'windows-nt)
  ;; asciiフォントをConsolasに
  (set-face-attribute 'default nil
                      :family "Consolas"
                      :height 100)
  ;; 日本語フォントをメイリオに
  (set-fontset-font
   nil
   'japanese-jisx0208
   (font-spec :family "メイリオ"))
  ;; フォントの横幅を調節する
  (setq face-font-rescale-alist
        '((".*Consolas.*" . 1.0)
          (".*メイリオ.*" . 1.15)
          ("-cdac$" . 1.3))))
