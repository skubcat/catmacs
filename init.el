(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/") t)
(package-initialize)

(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))




(require 'use-package-ensure)
(setq use-package-always-ensure t)
(use-package auto-compile
    :config (auto-compile-on-load-mode))
(setq load-prefer-newer t)
(use-package use-package-ensure-system-package)
(setq byte-compile-warnings '(cl-functions))


					; General
(scroll-bar-mode -1)        ; Disable visible scrollbar
(global-display-line-numbers-mode t) ; Display line numbers
(setq display-time-default-load-average nil)
      (display-time-mode t)





(use-package pdf-tools)     ; PDF reading
(use-package nov)           ; EPUB Reading


(use-package evil           ; VIM
  :ensure t
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))


(use-package beacon
  :config
  (beacon-mode 1))

(use-package powerline)

(use-package elfeed)
  :init
  (setq elfeed-feeds
      '("https://archlinux.org/feeds/news/"                            
	"https://bugs.archlinux.org/feed.php?feed_type=rss2&project=0" 	
	"https://www.reddit.com/r/kernel/.rss"                     
	"https://www.schneier.com/feed/atom"))
  :config
  (elfeed-update)

(use-package flycheck-aspell)

(use-package solarized-theme)
  :config
  (load-theme `solarized-dark t)

(use-package lsp-mode)

(use-package company)
  :config
  (add-hook `after-init-hook `global-company-mode)

(use-package treemacs)
  :ensure t
  :defer t

(use-package disaster) 


;; (use-package sly) I'll need to look more into this
;;  :config
;;  (setq inferior-lisp-program "/opt/sbcl/bin/sbcl")

(use-package all-the-icons)

(use-package go-mode)

(use-package org-chef)

(use-package centaur-tabs
  :demand
  :config
  (setq centaur-tabs-style "bar"
  centaur-tabs-height 32
  centaur-tabs-set-icons t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))



