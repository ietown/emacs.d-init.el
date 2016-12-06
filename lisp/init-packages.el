(when (>= emacs-major-version 24)
    ;;(require 'package)
   
    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t))

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
               ;; --- Auto-completion ---
               company
	       afternoon-theme
	       ;;hungry-delete
	       counsel
	       swiper
	       smartparens
	       js2-mode
	       nodejs-repl
	       exec-path-from-shell
	       popwin
               ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
    (loop for pkg in my/packages
          when (not (package-installed-p pkg)) do (return nil)
          finally (return t)))

(unless (my/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg my/packages)
      (when (not (package-installed-p pkg))
        (package-install pkg))))

;;let emacs could find the execuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


;;(global-hungry-delete-mode)

(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;; config js2-mode for js file
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(global-company-mode t)

(load-theme 'afternoon)
(require 'popwin)
(popwin-mode t)

(provide 'init-packages)
