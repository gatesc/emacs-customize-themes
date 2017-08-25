(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (atlas_green)))
 '(custom-safe-themes (quote ("53794d27167394f15c8f60cb6e60483634dcac1daf38490c34251db79ca8ddae" "610f4e9e4fc21c14ff97d4c002a546264d68135e2c4172a585c79d1aacdca1c1" "a8a4c719689e1ed8be8635dafbb8b99af78763ca6a29e2acae8c924a6ce083cc" "9c0382905495fb01fce8625e2fa612a600bdc8179fff734b72de96bfa378246a" "a63d1c9d94a57f0b145f290d1afc8b5f74c80af44d50bf142476f96303739f8f" "58bb6aab91cd77acc397b8eb3eafcb1283d3ccfa326738362642efefddc37224" "303053e4f404c58416d7b2344e481820fdcec39ad9b232b1d7a041e0f823c783" "7c8d2f0fe222c1370c9f12b667cfdd6fca0f9606324f841a54fe0df910e9bcb0" "3e99b34a0c3a6674d162ce07d13f99b85b23da36ca9c405b0b4fd1b90271d200" "fe4327638c9acabe635dc54f007dd372da4ed8fb64c37d9cbc65e506fa57b459" "1256f6bf3469c730df2971a1981728e69d41669b32da5c6ddbd1732e4a636ac9" "993e591e16247248f072b52d74ccb0c346a6d6d4d2c63eb97392b9f8cfcc7acf" "4f930d213ba9809b051dc34caabc1a4bf02c279b5e162df89d2832aac91cfd8f" "82cd3bbd516887ca85e69916846187367db558f2d0a3e0bf1e528a6e7aa1190b" "313cde3cf7deb4131e9253b94198353e9dc6f1325358f8bb2388429ec4756aee" "e478cf9abbbaaa1a27e0840a94500a5247a85eef649a221459bc61532afc8300" "2d45161e4f875e486a2ab1db297c458fe4b3f9c0f6517eb1a66f921f8370d2a5" "962c778059843ed7d71ced184b5d3767555a4e6d1033516ae6bf6dc8e5080fe6" "0ed4e9067e04f054fba0b65cb44dd50f620803aac5637237534b63893ff620e8" "93b4bbdd38e4a9948d5f7152437f5a88b2223d5340e8af1cbc9fc6d57b0f3ad1" "d7b65546903c08e59fcfbedbe66977abda76a88f1b34c67e901e188d3e0efb44" "642e1aedafbee6f8cb7b59c5918ac22af886af0ae44129936d9e1601cb06f264" "2ab777ace490170f1021a09d7409e683412d5c497e93b251e46b74f8eafdccae" "753d745ff445712090f271b4e39423d0be726702d98fbb625d626f0b94787294" "dd60a859c3dc384b736bceded299b9d858f3d3085cf337eb79cddab01f97511c" "74f3dc474ff8441ca607811613f40a994a30aae0d1d9630ca4f992f5439b4c8b" "23dd9f83298a50b7b82dbc01e57619c424984627b5cbbd0fb1a724a3860e21d2" default)))
 '(font-use-system-font t)
 '(global-auto-revert-mode t)
 '(inhibit-startup-screen t)
 '(kill-do-not-save-duplicates t)
 '(kill-ring-max 40)
 '(kill-whole-line t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ===================================================================
;;
;; ===================================================================
;;
;; Key board mappping
;;
(global-set-key [f1] 'dabbrev-expand)
(global-set-key [f5] 'advertised-undo) ;; Undo
(global-set-key [f10] 'other-window)
(global-set-key [f11] 'bury-buffer)
(global-set-key [f12] 'buffer-ring-backward)

(defun buffer-ring-backward ()
  "Run backward through the buffer ring; i.e. perform the inverse
of bury-buffer"
  (interactive)
  ;;  Only way I can find to do this is run through all the buffers
  ;;  and remember the one we find just before we get back to the
  ;;  one on which we started.  Yuk!  Fortunately, this hackery
  ;;  seems to leave the "buffer stack" in the right order.
  (let ((thisone (current-buffer)) (prevone (current-buffer)))
    (bury-buffer)
    (while (not (eq (current-buffer) thisone))
      (setq prevone (current-buffer))
      (bury-buffer))
    (switch-to-buffer prevone))
)

; have ctrl-tab swtich to the other frame
(global-set-key [C-tab] 'other-window)

; bind Alt-g to goto line
(global-set-key [?\M-g] 'goto-line)

; bind Ctrl-q to save and quit
(global-set-key "\C-q" 'save-buffers-kill-emacs)

;; ===================================================================
;;
;; ===================================================================
; Force javascript mode to define a keybinding for comment region
(global-set-key "\C-c\C-c" 'comment-region)

;; ===================================================================
;;
;; ===================================================================
; Have delete key delete a highlighted region
(delete-selection-mode t)

;; ===================================================================
;;
;; ===================================================================
; Have tabs be inserted as spaces
(setq-default indent-tabs-mode nil)

;; ===================================================================
;;
;; ===================================================================
;;; The following code puts the complete file path on the TITLE bar
(setq frame-title-format (concat (system-name) " >  %S: %f") )

;; ===================================================================
;;
;; ===================================================================
;;; prevent emacs from word wrapping by default
(set-default 'truncate-lines t)

;;; Have emacs automatically indent
;(global-set-key "\C-M" 'newline-and-indent)
