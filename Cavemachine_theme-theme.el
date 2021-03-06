(deftheme Cavemachine_theme
  "Created 2017-08-20.")

(custom-theme-set-variables
 'Cavemachine_theme
 '(ansi-color-names-vector ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(browse-url-browser-function (quote browse-url-chrome))
 '(browse-url-chrome-program "opera")
 '(company-quickhelp-color-background "gray20")
 '(company-quickhelp-color-foreground "gainsboro")
 '(cua-mode t)
 '(column-number-mode t)
 '(semantic-mode t)
 '(tool-bar-mode nil)
 '(package-selected-packages (quote (flycheck ivy ido-grid-mode company-quickhelp nlinum yafolding dashboard smex yasnippet-snippets ## shell-pop powerline sr-speedbar yasnippet)))
 '(custom-safe-themes (quote ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default))))

(custom-theme-set-faces
 'Cavemachine_theme
 '(bold ((t nil)))
 '(bold-italic ((t (:slant italic))))
 '(company-scrollbar-bg ((t (:background "gray35"))))
 '(company-scrollbar-fg ((t (:background "gray60"))))
 '(company-template-field ((t (:background "gray30" :foreground "light gray"))))
 '(company-tooltip ((t (:background "gray30" :foreground "light gray"))))
 '(company-tooltip-annotation ((t (:foreground "tan1"))))
 '(company-tooltip-common ((t (:foreground "light blue"))))
 '(cursor ((t (:background "gainsboro"))))
 '(custom-variable-tag ((t (:foreground "steel blue"))))
 '(font-lock-comment-face ((t (:foreground "gray35"))))
 '(font-lock-constant-face ((t (:foreground "#ad5b20"))))
 '(font-lock-function-name-face ((t (:foreground "gray60"))))
 '(font-lock-keyword-face ((t (:foreground "#ad5b20"))))
 '(font-lock-preprocessor-face ((t nil)))
 '(font-lock-string-face ((t (:foreground "#7390b9"))))
 '(font-lock-type-face ((t (:foreground "#ba7633"))))
 '(font-lock-variable-name-face ((t (:foreground "gray60"))))
 '(highlight ((t (:background "gray10" :foreground "gray"))))
 '(minibuffer-prompt ((t (:foreground "dim gray"))))
 '(mode-line ((t (:background "gray15" :foreground "gray50" :box (:line-width -1 :style released-button)))))
 '(mode-line-inactive ((t (:background "gray5" :foreground "gray30" :box (:line-width -1 :style released-button)))))
 '(shadow ((t (:foreground "grey40"))))
 '(show-paren-match ((t (:background "gray10"))))
 '(tty-menu-disabled-face ((t (:background "color-237" :foreground "color-243"))))
 '(tty-menu-enabled-face ((t (:background "color-237" :foreground "color-250" :weight bold))))
 '(tty-menu-selected-face ((t (:background "color-17"))))
 '(company-tooltip-selection ((t (:background "gray40"))))
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "#959595" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "1ASC" :family "Liberation Mono")))))

(provide-theme 'Cavemachine_theme)
