(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes '(tango))
 '(package-selected-packages
   '(sr-speedbar ## duplicate-thing company-ctags drag-stuff yafolding company))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "IBM Plex Mono" :foundry "IBM " :slant normal :weight semi-bold :height 128 :width normal)))))
(add-hook 'after-init-hook 'global-company-mode)
;;(add-hook 'after-init-hook 'semantic-mode)
(add-hook 'after-init-hook 'yafolding-mode)
(global-set-key [f9] 'yafolding-toggle-element)
(setq make-backup-files nil)
(setq compilation-ask-about-save nil)
(defalias 'yes-or-no-p 'y-or-n-p)
(global-set-key [escape] 'keyboard-escape-quit)

(setq compile-command "make")
(global-set-key [f5] 'recompile)
(global-set-key [M-down] 'drag-stuff-down)
(global-set-key [M-up] 'drag-stuff-up)

;;(add-hook 'c++-mode-hook 'irony-mode)
;;(add-hook 'c-mode-hook 'irony-mode)
;;(add-hook 'objc-mode-hook 'irony-mode)

;;(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(global-set-key (kbd "M-c") 'duplicate-thing)
(setq show-paren-style 'mixed)
(show-paren-mode 1)

(setq compile-command "make")
(global-set-key [f5] 'recompile)

(defun run_compiled ()
  (interactive)
  (shell-command "xterm -e bash -c './cpp_ex ; read'"))

(global-set-key [f4] 'save-buffer)
(global-set-key [f6] 'run_compiled)
(global-set-key [f8] 'delete-other-windows)
(global-set-key [f12] 'sr-speedbar-toggle)
(setq compilation-finish-function
  (lambda (buf str)
    (if (null (string-match ".*exited abnormally.*" str))
        (progn
          (run-at-time
           "2 sec" nil 'delete-windows-on
           (get-buffer-create "*compilation*"))
          (message "No Compilation Errors!")))))
