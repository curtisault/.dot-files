
;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)


;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)


;; Minimal UI
(scroll-bar-mode  -1)
(tool-bar-mode    -1)
(tooltip-mode     -1)
(global-linum-mode 1)


;; Vim mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1))


;; evil-escape
(use-package evil-escape
  :ensure t
  :init
  (setq-default evil-escape-key-sequence "jk")
  :config
(evil-escape-mode 1))


;; Theme
(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t))

;; Helm
(use-package helm
  :ensure t
  :init
  (setq helm-mode-fuzzy-match t)
  (setq helm-completion-in-region-fuzzy-match t)
  (setq helm-candidate-number-list 50)
  :config
  (helm-mode 1))


;; Which Key
(use-package which-key
  :ensure t
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :config
  (which-key-mode 1))


;; Custom keybinding
(use-package general
  :ensure t
  :config (general-define-key
  :states '(normal visual insert emacs)
  :prefix "SPC"
  :non-normal-prefix "M-SPC"
  "TAB" '(switch-to-prev-buffer :which-key "previous buffer")
  "SPC" '(helm-M-x :which-key "M-x")
  ;; Files
  "ff"  '(helm-find-files :which-key "find files")
  "fs"  '(save-buffer :which-key "save file")
  ;; Buffers
  "bb"  '(helm-buffers-list :which-key "buffers list")
  ;; Window
  "wl"  '(windmove-right :which-key "move right")
  "wh"  '(windmove-left :which-key "move left")
  "wk"  '(windmove-up :which-key "move up")
  "wj"  '(windmove-down :which-key "move bottom")
  "w/"  '(split-window-right :which-key "split right")
  "w-"  '(split-window-below :which-key "split bottom")
  "wx"  '(delete-window :which-key "delete window")
  ;; NeoTree
  "ft"  '(neotree-toggle :which-key "toggle neotree")
  ;; Others
  "at"  '(ansi-term :which-key "open terminal")
))


;; Projectile
(use-package projectile
  :ensure t
  :init
  (setq projectile-require-project-root nil)
  :config
  (projectile-mode 1))


;; All The Icons
(use-package all-the-icons :ensure t)


;; NeoTree
(use-package neotree
  :ensure t
  :init
(setq neo-theme (if (display-graphic-p) 'icons 'arrow)))


;; Fancy titlebar for MacOS
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon  nil)
(setq frame-title-format nil)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (which-key use-package helm evil-escape doom-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
