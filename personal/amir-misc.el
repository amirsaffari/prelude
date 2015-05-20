;;; MY STUFF

;;; Code:
(add-to-list 'load-path "~/.emacs.d/personal")
(progn (cd "~/.emacs.d/personal")
       (normal-top-level-add-subdirs-to-load-path)
       (cd "~"))

;; ====== from core/ui
(menu-bar-mode +1)

;; ====== Set temporary directory
(setq temporary-file-directory "~/.emacs.d/tmp/")

;; ===== Set standard indent to 4 ====
(setq-default indent-tabs-mode nil)
(setq standard-indent 4)
(setq-default tab-width 4)

;; ========== Line by line scrolling ==========
(setq scroll-step 1)
(setq scroll-conservatively 5)

;; ========== Prevent Emacs from making backup files ==========
(setq make-backup-files nil)

;; ========== Set the fill column ==========
(setq-default fill-column 120)
(setq whitespace-line-column 120) ;; limit line length
(setq flycheck-flake8-maximum-line-length 120)

;; ========== Some key-bindings
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(global-set-key "\C-c\C-a" 'mark-whole-buffer)

(global-set-key (kbd "\C-x\C-e") 'comment-dwim)
(global-set-key (kbd "\C-c\C-e") 'comment-dwim)

(global-set-key [C-return]         'dabbrev-expand)
(define-key esc-map [C-return]     'dabbrev-completion)

;; ========= Some UI modifications
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

(setq dabbrev-case-replace nil)
(setq require-final-newline t)
(setq inhibit-startup-message t)
(mouse-avoidance-mode 'cat-and-mouse)

;; ========= Powerline
(add-to-list 'load-path "~/.emacs.d/personal/preload/powerline")
(require 'powerline)
(powerline-center-theme)

(setq frame-title-format '(buffer-file-name "%f" ("%b")))
(if (load "mwheel" t)
    (mwheel-install))

;; ========= Markdown mode
(add-to-list 'load-path "~/.emacs.d/personal/preload/markdown-mode")
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; ========= Color theme
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/personal/preload/monokai-emacs")
;; (load-theme 'monokai t)

;; (add-to-list 'custom-theme-load-path "~/.emacs.d/personal/preload/zenburn-emacs")
;; (load-theme 'zenburn t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/personal/preload/solarized-emacs")
(load-theme 'solarized-dark t)

(provide 'amir-misc)
;;; amir-misc.el ends here
