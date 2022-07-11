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
(use-package gruvbox-theme) ; Theme
(load-theme 'gruvbox t)


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

(use-package flycheck-aspell)
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ispell-dictionary "american")
 '(package-selected-packages
   '(flycheck-aspell powerline use-package-ensure-system-package twittering-mode telephone-line pdf-tools org-roam-ui nov neotree gruvbox-theme flycheck-haskell exwm evil-easymotion evil-collection dashboard counsel beacon auto-compile)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
