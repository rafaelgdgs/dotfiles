(setq custom-file "~/.emacs.custom.el")
(load custom-file)
(setq make-backup-files nil)
;(setq backup-directory-alist '((".*" . "~/.emacs.d/backups")))

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode 1)
(ido-everywhere 1)
(column-number-mode 1)
(global-display-line-numbers-mode t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default inhibit-startup-screen t)
(setq-default display-line-numbers-type 'relative)

(use-package gruber-darker-theme
  :ensure t)

(use-package smex
  :ensure t)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(use-package multiple-cursors
  :ensure t)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->")         'mc/mark-next-like-this)
(global-set-key (kbd "C-<")         'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<")     'mc/mark-all-like-this)
(global-set-key (kbd "C-\"")        'mc/skip-to-next-like-this)
(global-set-key (kbd "C-:")         'mc/skip-to-previous-like-this)

(use-package rustic
  :ensure t)

(use-package company
  :ensure t)

(use-package lsp-mode
  :ensure t)
