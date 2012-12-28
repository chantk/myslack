<<<<<<< HEAD
(load-library "cl")
(load-library "cl-loaddefs")

=======
>>>>>>> origin/master
;;; Line to top of window;
;;; replace three keystroke sequence  C-u 0 C-l
(defun line-to-top-of-window ()
  "Move the line point that is on to top of window."
  (interactive)
  (recenter 0))

;;; Bind line-to-top-of-window to <F6> function key
(global-set-key [f6] 'line-to-top-of-window)

(when (>= emacs-major-version 21)
  (blink-cursor-mode 0)
  ;; Turn on image viewing
  (auto-image-file-mode t)
  ;; Turn on menu bar (this bar has text)
  ;; (Use numeric argument to turn on)
  (menu-bar-mode 1)
  ;; Turn off tool bar (this bar has icons)
  ;; Use numeric argument to turn on)
  (tool-bar-mode nil)
  ;; Turn off tooltip mode for tool bar
  ;; (This mode causes icon explanations to pop up)
  ;; (Use numeric argument to turn on)
  (tooltip-mode nil)
  ;; If tooltips turned on, make tips appear promptly
  (setq toolitp-delay 0.1)  ; default is 0.7 second
)
