
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

