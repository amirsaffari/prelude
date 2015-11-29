;; Cython
(load "cython-mode")

;; Virtualenvwrapper
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells) ;; if you want interactive shell support
(venv-initialize-eshell) ;; if you want eshell support
(setq venv-location '("/home/amir/projects/import.io/marvin/comp_name_env/"))
;;
