
;; Minimal UI
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)
(menu-bar-mode   -1)

;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(
        ("org"   . "http://orgmode.org/elpa/")
	("gnu"   . "http://elpa.gnu.org/packages/")
	("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; Minimal UI
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(tooltip-mode    -1)

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

