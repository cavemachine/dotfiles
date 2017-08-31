(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
(package-install-selected-packages)

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
;;(setq compile-command "g++ -o ntest main.cpp")

(defun run_compiled ()
  (interactive)
  (shell-command "xterm -e bash -c './cave_tetris ; read'"))
;;  (shell-command "xterm -e bash -c '~/Code/tree/ntest ; read'"))
  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;; (yas-global-mode 1)
(add-hook 'after-init-hook 'global-company-mode)
(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-c-headers))
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
(global-set-key [M-up] 'move-text-region-up)
(global-set-key [M-down] 'move-text-region-down)

(global-set-key [C-f1] 'imenu-list-smart-toggle)
(global-set-key [f9] 'sr-speedbar-toggle)
(global-set-key [f11] 'other-window)
(global-set-key [C-f10] 'ibuffer)

(global-set-key [C-f11] 'delete-window)
(global-set-key [f12] 'rotate-window)
(global-set-key [C-f12] 'rotate-layout)
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
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(custom-enabled-themes (quote (Cavemachine_theme)))
 '(custom-safe-themes
   (quote
    ("61cb13c3dcb029ebd9f2d9bc5cc3bb74ff4c3650538b1cbc184d7480c1e135ec" "fdc2178a29ab2031790c25952991c238fa74b409a60a00475031636d26b3fdd7" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(fci-rule-color "#003f8e")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(package-selected-packages
   (quote
    (smex rotate company-c-headers move-text cbm imenu-list idomenu flycheck ivy ido-grid-mode company-quickhelp nlinum yafolding dashboard yasnippet-snippets ## sr-speedbar yasnippet)))
 '(semantic-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#ff9da4")
     (40 . "#ffc58f")
     (60 . "#ffeead")
     (80 . "#d1f1a9")
     (100 . "#99ffff")
     (120 . "#bbdaff")
     (140 . "#ebbbff")
     (160 . "#ff9da4")
     (180 . "#ffc58f")
     (200 . "#ffeead")
     (220 . "#d1f1a9")
     (240 . "#99ffff")
     (260 . "#bbdaff")
     (280 . "#ebbbff")
     (300 . "#ff9da4")
     (320 . "#ffc58f")
     (340 . "#ffeead")
     (360 . "#d1f1a9"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(eshell-prompt ((t (:foreground "dim gray" :weight bold))))
 '(imenu-list-entry-face-0 ((t (:inherit imenu-list-entry-face :foreground "PaleGreen4"))))
 '(imenu-list-entry-face-1 ((t (:inherit imenu-list-entry-face :foreground "gray70")))))
