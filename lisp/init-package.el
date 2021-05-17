
;; restart emacs
(use-package restart-emacs)


(use-package company
  :config
  (setq company-dabbrev-code-everywhere t
        company-dabbrev-code-modes t
        company-dabbrev-code-other-buffers 'all
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case t
        company-dabbrev-other-buffers 'all
        company-require-match nil
        company-minimum-prefix-length 2
        company-show-numbers t
        company-tooltip-limit 20
        company-idle-delay 0
        company-echo-delay 0
        company-tooltip-offset-display 'scrollbar
        company-begin-commands '(self-insert-command))
  (push '(company-semantic :with company-yasnippet) company-backends)
  :hook ((after-init . global-company-mode)))

;; grammar check in global situation
;;(use-package flycheck
;;  :hook (after-init . global-flycheck-mode))
;; only in program mode
;;(use-package flycheck
;;  :hook (prog-mode . flycheck-mode))

(use-package which-key
  :defer nil
  :config (which-key-mode))

(use-package org-preview-html)

(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

(use-package grip-mode
  :ensure t
  :bind (:map markdown-mode-command-map
         ("g" . grip-mode)))




;; -----------------------------------------------------------------
(provide 'init-package)


