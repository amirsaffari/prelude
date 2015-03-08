;;====== Pig
(require 'pig-mode)

;; (setq pig-executable "/usr/local/pig/bin/pig")
;; (setq pig-executable-options '("-x" "local"))
;; (setq pig-executable-prompt-regexp "^grunt> ")
(setq pig-indent-level 4)
(setq pig-version "0.12.0")

(autoload 'pig-snippets-initialize "pig-snippets" nil nil nil)
(eval-after-load 'yasnippet '(pig-snippets-initialize))
