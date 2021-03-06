;; theme
;;(use-package monokai-pro-theme
;;  :ensure t
;;  :config
;;  (load-theme 'monokai-pro t))

(use-package gruvbox-theme
    :init (load-theme 'gruvbox-dark-soft t))

;; mode line
(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme 1
	sml/theme 'respectful)
  (sml/setup))


(provide 'init-ui)
