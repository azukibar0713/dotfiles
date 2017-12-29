(when (require 'redo+ nil t)
  ;; C-' にリドゥを割り当てる
  (global-set-key (kbd "C-'") 'redo)
  ;; 日本語キーボードの場合C-. などがよいかも
  (global-set-key (kbd "C-.") 'redo)
  ) ; ←ここでC-x C-eで設定反映


