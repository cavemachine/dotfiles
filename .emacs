(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
(package-install-selected-packages)

(cua-mode 1)
(setq make-backup-files nil) 
(setq auto-save-default nil) 
(setq compilation-ask-about-save nil)
(setq c-default-style "cc-mode")
(defalias 'yes-or-no-p 'y-or-n-p)


(setq compile-command "gcc -o test_alg merge.c")
(defun run_compiled ()
  (interactive)
;;  (shell-command "xterm -e bash -c './test_alg ; read'"))
  (shell-command "./test_alg ; read"))
(global-set-key [escape] 'keyboard-escape-quit)
(global-set-key [f5] 'recompile)
(global-set-key [f6] 'run_compiled)
(global-set-key [f9] 'yafolding-toggle-element)
(global-set-key [f12] 'delete-other-windows)
(global-set-key [f11] 'other-window)
(global-set-key [f8] 'dumb-jump-go)
(global-set-key [f7] 'dumb-jump-back)
(setq dumb-jump-selector 'nil) 


(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook 'yafolding-mode)
(add-hook 'after-init-hook 'semantic-mode)
;;(add-to-list 'same-window-buffer-names "*compilation*")
(setq compilation-finish-function
  (lambda (buf str)
    (if (null (string-match ".*exited abnormally.*" str))
        ;;no errors, make the compilation window go away in a few seconds
        (progn
          (run-at-time
           "2 sec" nil 'delete-windows-on
           (get-buffer-create "*compilation*"))
          (message "No Compilation Errors!")))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-clang-arguments (quote ("")))
 '(company-clang-insert-arguments t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (deeper-blue)))
 '(package-selected-packages
   (quote
    (helm ivy dumb-jump company-irony-c-headers company-irony irony yafolding hideshowvis company-c-headers company)))
 '(safe-local-variable-values
   (quote
    ((company-clang-arguments "-I/usr/include/gtk-3.0" "-I/usr/include/glib-2.0" "-I/usr/lib64/glib-2.0/include" "-I/usr/include/atk-1.0" "-I/usr/include/cairo" "-I/usr/include/pango-1.0" "-I/usr/include/pixman-1" "-I/usr/include/freetype2" "-I/usr/include/libpng12" "-I/usr/include/gdk-pixbuf-2.0/"))))
 '(setq cursor-type t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))
 '(company-tooltip ((t (:background "black" :foreground "black" :weight bold))))
 '(company-tooltip-selection ((t (:background "green"))))
 '(cursor ((t (:background "white"))))
 '(font-lock-builtin-face ((t (:foreground "yellow"))))
 '(font-lock-constant-face ((t (:foreground "yellow"))))
 '(font-lock-function-name-face ((t (:foreground "yellow"))))
 '(font-lock-keyword-face ((t (:foreground "yellow"))))
 '(font-lock-preprocessor-face ((t (:foreground "color-240"))))
 '(font-lock-string-face ((t (:foreground "white"))))
 '(font-lock-type-face ((t (:foreground "yellow"))))
 '(font-lock-variable-name-face ((t (:foreground "white"))))
 '(menu ((t (:background "black" :foreground "black" :inverse-video t :weight bold))))
 '(mode-line ((t (:background "color-235" :foreground "black" :box (:line-width 1 :style released-button) :weight bold))))
 '(mode-line-buffer-id ((t (:foreground "brightblack" :weight bold))))
 '(mode-line-highlight ((t (:box (:line-width 2 :color "green" :style released-button)))))
 '(mode-line-inactive ((t (:background "color-235" :foreground "black" :box (:line-width 1 :color "gray40"))))))
