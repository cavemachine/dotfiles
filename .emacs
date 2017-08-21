(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  
(setq-default cursor-type 'bar) 
(setq make-backup-files nil) 
(setq auto-save-default nil) 
(setq compilation-ask-about-save nil)
(global-nlinum-mode t)
(show-paren-mode t)
(setq show-paren-style 'expression)
(cua-mode 1)
(setq inhibit-startup-message t)
 
(setq compile-command "make -k")
(defun run_compiled ()
  (interactive)
  (shell-command "xterm -e bash -c './cave_tetris ; read'"))
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;; (yas-global-mode 1)
(add-hook 'after-init-hook 'global-company-mode)
;;(with-eval-after-load 'company
;;  (add-to-list 'company-backends 'company-c-headers))
(company-quickhelp-mode 1)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(require 'dashboard)
(dashboard-setup-startup-hook)
(yafolding-mode)
(setq c-default-style "cc-mode")
(setq shr-color-visible-luminance-min 80)
(defalias 'list-buffers 'ibuffer)
(electric-pair-mode 1)
(defalias 'yes-or-no-p 'y-or-n-p)

(when (member "Liberation Mono" (font-family-list))
  (set-face-attribute 'default nil :font "Liberation Mono-11"))
(desktop-save-mode 1)

;;(setq tabbar-ruler-global-tabbar t)    ; get tabbar
;;(setq tabbar-ruler-popup-scrollbar t)  ; show scroll-bar on mouse-move
;;(require 'tabbar-ruler)
(savehist-mode 1)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse    
(setq scroll-step 1) ;; keyboard scroll one line at a time
(ido-grid-mode 1)
(ivy-mode 1)
(add-hook 'after-init-hook #'global-flycheck-mode)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
(setq vc-handled-backends nil) 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  
(global-set-key [f5] 'recompile)
(global-set-key [f6] 'run_compiled)
(global-set-key [f7] 'yafolding-hide-element)
(global-set-key [f8] 'yafolding-show-element)
(global-set-key [C-f7] 'yafolding-hide-all)
(global-set-key [C-f8] 'yafolding-show-all)

(global-set-key [f9] 'sr-speedbar-toggle)
(global-set-key [C-f10] 'ibuffer)
(global-set-key [f11] 'other-window)
(global-set-key [C-f11] 'delete-window)
(global-set-key [f12] 'next-buffer)
(global-set-key [C-f12] 'kill-this-buffer)
(cua-mode 1)
(global-set-key (kbd "M-O 5 m") 'shrink-window)
(global-set-key (kbd "M-O 5 k") 'enlarge-window)
(global-set-key (kbd "M-O 5 j") 'enlarge-window-horizontally)
(global-set-key (kbd "M-O 5 o") 'shrink-window-horizontally)

(global-set-key [escape] 'keyboard-escape-quit)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ace-popup-menu-mode t)
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(browse-url-browser-function (quote browse-url-chrome))
 '(browse-url-chrome-program "opera")
 '(column-number-mode t)
 '(company-c-headers-path-system (quote ("/usr/include/c++/7.1.1" "/usr/local/include/")))
 '(company-quickhelp-color-background "gray20")
 '(company-quickhelp-color-foreground "gainsboro")
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (tango-dark)))
 '(ede-project-directories (quote ("/home/marcus/Code/projectx")))
 '(package-selected-packages
   (quote
    (flycheck ivy ido-grid-mode ido-vertical-mode company-quickhelp magit nlinum yafolding dashboard smex yasnippet-snippets ## shell-pop powerline sr-speedbar cmake-mode cmake-ide yasnippet)))
 '(semantic-mode t)
 '(sublimity-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "#959595" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "1ASC" :family "Liberation Mono"))))
 '(bold ((t nil)))
 '(bold-italic ((t (:slant italic))))
 '(company-scrollbar-bg ((t (:background "gray35"))))
 '(company-scrollbar-fg ((t (:background "gray60"))))
 '(company-template-field ((t (:background "gray30" :foreground "light gray"))))
 '(company-tooltip ((t (:background "gray30" :foreground "light gray"))))
 '(company-tooltip-annotation ((t (:foreground "tan1"))))
 '(company-tooltip-common ((t (:foreground "light blue"))))
 '(company-tooltip-selection ((t (:background "gray60"))))
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
 '(tty-menu-selected-face ((t (:background "color-17")))))
