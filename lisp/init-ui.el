(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq inhibit-splash-screen t)
(setq-default cursor-type 'bar)
(setq initial-frame-alist (quote ((fullscreen . maximized))))
(global-hl-line-mode t)
(global-linum-mode 1)

(provide 'init-ui)
