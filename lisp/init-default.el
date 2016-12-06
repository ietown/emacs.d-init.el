(setq ring-bell-function 'ignore)
(global-auto-revert-mode t)
(global-linum-mode 1)
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("7sm" "yesiming")
					    ))

(setq make-backup-file nil)
(setq auto-save-default nil)

(recentf-mode t)
(setq recentf-max-menu-items 25)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)





(provide 'init-default)
