;; -*- lexical-binding: t; -*-
(require 'package)
(load-file "~/.emacs.d/scripts/git.el")

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

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
 default-directory "c:/Users/Юзер/Desktop"
 fill-column 79)

(add-to-list
 'default-frame-alist
 '(font . "Fira Code-10"))

(custom-set-variables
 '(custom-enabled-themes '(doom-solarized-dark))
 '(custom-safe-themes
   '("1cae4424345f7fe5225724301ef1a793e610ae5a4e23c023076dc334a9eb940a"
   "51c71bb27bdab69b505d9bf71c99864051b37ac3de531d91fdad1598ad247138"
   "636b135e4b7c86ac41375da39ade929e2bd6439de8901f53f88fde7dd5ac3561"
   "0c08a5c3c2a72e3ca806a29302ef942335292a80c2934c1123e8c732bb2ddd77"
   "70b596389eac21ab7f6f7eb1cf60f8e60ad7c34ead1f0244a577b1810e87e58c"
   default))
 '(package-selected-packages
   '(nim-mode rust-mode md-readme markdown-preview-mode haskell-mode doom-themes evil gruvbox-theme)))
