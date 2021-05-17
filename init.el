


;; ------------------------------------------------------------------
(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))
;; user-emacs-directory is "~/.emacs.d/"

;; setting made by GUI automatically save in "custom.el"
;;(setq custom-file
;;      (expand-file-name "custom.el" user-emacs-directory))
;;
;;(when (file-exists-p custom-file)
;;  (load-file custom-file))

(require 'init-startup)
(require 'init-elpa)
(require 'init-package)
(require 'init-ui)

;; -------------------------------------------------------------------
