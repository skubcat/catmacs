(in-package :stumpwm)
(set-module-dir "~/.stumpwm.d/modules/")
;; To do
;; * zen/focus mode
;; * modeline or some sort of bar. i'm not sure yet.
;; * theming, better floating.


(run-shell-command "hsetroot -fill /home/brianna/.stumpwm.d/lisp2.png")
(run-shell-command "picom")

(setf *mouse-focus-policy* :click )

(setq *terminal* "urxvt")

(setf *message-window-gravity* :center)
(setf *input-window-gravity* :center)

(set-prefix-key (kbd "C-z"))


(set-msg-border-width 3)
(setf *message-window-padding* 6)

