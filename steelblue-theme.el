(deftheme steelblue
  "Created 2017-08-22.")

(custom-theme-set-faces
 'steelblue
 '(cursor ((((class color) (min-colors 89)) (:background "thistle"))))
 '(error ((((class color) (min-colors 89)) (:foreground "salmon1"))))
 '(warning ((((class color) (min-colors 89)) (:foreground "orange"))))
 '(success ((((class color) (min-colors 89)) (:foreground "yellow green"))))
 '(compilation-mode-line-fail ((t (:foreground "orange red"))))
 '(compilation-mode-line-run ((((class color) (min-colors 89)) (:foreground "dark goldenrod"))))
 '(compilation-mode-line-exit ((t (:foreground "dark orange"))))
 '(highlight ((((class color) (min-colors 89)) (:foreground "white" :background "dark green"))))
 '(region ((((class color) (min-colors 89)) (:foreground "white" :background "dark green"))))
 '(secondary-selection ((((class color) (min-colors 89)) (:background "dark slate gray"))))
 '(isearch ((((class color) (min-colors 89)) (:foreground "white" :background "dark goldenrod"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:background "gray25"))))
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "LightSteelBlue"))))
 '(font-lock-comment-face ((t (:foreground "gold"))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "turquoise"))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:foreground "pale green"))))
 '(font-lock-keyword-face ((t (:foreground "PeachPuff2"))))
;;; '(font-lock-string-face ((t (:foreground "firebrick4"))))
 '(font-lock-string-face ((t (:foreground "#D28a98"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "aquamarine"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "yellow green"))))
 '(link ((((class color) (min-colors 89)) (:underline t :foreground "cyan"))))
 '(link-visited ((((class color) (min-colors 89)) (:foreground "magenta" :underline t))))
;;; '(default ((t (:background "#3465A4" :foreground "black")))))
 '(default ((t (:background "#3465A4" :foreground "#CEA54B")))))

(provide-theme 'steelblue)
