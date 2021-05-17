;; setting melpa and install use-package
(require 'package)
(setq package-archives '(("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("org"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/")t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(setq package-check-signature nil) ;个别时候会出现签名校验失败

(require 'package) ;; 初始化包管理器

(unless (bound-and-true-p package--initialized)
  (package-initialize)) ;; 刷新软件源索引

(unless package-archive-contents
    (package-refresh-contents))

;; use-package setting
;; if there is no use-package, refresh the content and then install use-package
(unless (package-installed-p 'use-package)
   (package-refresh-contents)
   (package-install 'use-package))

(require 'use-package)


(eval-and-compile
    (setq use-package-always-ensure t) ;不用每个包都手动添加:ensure t关键字
    (setq use-package-always-defer t) ;默认都是延迟加载，不用每个包都手动添加:defer t
    (setq use-package-always-demand nil)
    (setq use-package-expand-minimally t)
    (setq use-package-verbose t))

(provide 'init-elpa)
