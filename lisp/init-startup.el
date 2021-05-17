
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

(defalias 'yes-or-no-p 'y-or-n-p)

(menu-bar-mode 1)

(tool-bar-mode 0)

(scroll-bar-mode 0)



(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)

(setq inhibit-startup-screen 1)

(provide 'init-startup)

