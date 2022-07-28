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

(load-module "swm-gaps")

(setf swm-gaps:*head-gaps-size* 20)

(setf swm-gaps:*inner-gaps-size* 5)

(setf swm-gaps:*outer-gaps-size* 30)

