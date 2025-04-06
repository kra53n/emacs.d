;; -*- lexical-binding: t; -*-
(require 'package)
(load-file "~/.emacs.d/scripts/git.el")
(load-file "~/.emacs.d/scripts/explr.el")
(load-file "~/.emacs.d/scripts/rust.el")
(load-file "~/.emacs.d/scripts/python.el")
(load-file "~/.emacs.d/hooks.el")

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;;; MODE CONFIGURATION
;; CommonLisp setting

(add-to-list 'load-path "slime")
(require 'slime)
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))
(setq inferior-lisp-program "/usr/bin/sbcl") 
(slime-setup)

;;; APPEARANCE

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode 1)
(column-number-mode 1)

(evil-mode 1)

(setq
 inhibit-startup-message t
 display-line-numbers-type 'relative
 make-backup-files nil
 fill-column 79)

(add-to-list
 'default-frame-alist
 '(font . "JetBrains Mono-10"))


;;; HOOKS

(defun my-c-mode-hook ()
  (setq c-basic-offset 4)
  (setq tab-width 4)
  (setq indent-tabs-mode nil))

(add-hook 'c-mode-hook 'my-c-mode-hook)

(add-hook 'text-mode-hook 'auto-fill-mode)


;;; KEYBINDINGS

(global-set-key (kbd "M--") 'untabify)
(global-set-key (kbd "M-p") 'ace-window)
(global-set-key (kbd "M-f") 'find-file)
(global-set-key (kbd "M-b") 'switch-to-buffer)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)
(global-set-key (kbd "M-o") 'compile)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(substrata))
 '(custom-safe-themes
   '("9e328f02fa7d0a9251bffa97f197912ea8a8f05c580a37dfc896e8f2a243675f"
     "5927c18d396a04114c44be0f89ac2e26c0db6c9a15ed5e3b35f0e18120562d98"
     default))
 '(package-selected-packages
   '(markdown-mode slime zen-mode nim-mode rust-mode md-readme markdown-preview-mode haskell-mode doom-themes evil gruvbox-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
