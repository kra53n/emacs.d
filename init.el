;; -*- lexical-binding: t; -*-
(require 'package)
(load-file "~/.emacs.d/scripts/git.el")
(load-file "~/.emacs.d/scripts/explr.el")
(load-file "~/.emacs.d/scripts/rust.el")
(load-file "~/.emacs.d/scripts/python.el")

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
 '(custom-enabled-themes '(kanagawa))
 '(custom-safe-themes
   '("02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644"
   "4fda8201465755b403a33e385cf0f75eeec31ca8893199266a6aeccb4adedfa4"
   "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851"
   "545ab1a535c913c9214fe5b883046f02982c508815612234140240c129682a68"
   "60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8"
   "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184"
   "c865644bfc16c7a43e847828139b74d1117a6077a845d16e71da38c8413a5aaa"
   "570263442ce6735821600ec74a9b032bc5512ed4539faf61168f2fdf747e0668"
   "adaf421037f4ae6725aa9f5654a2ed49e2cd2765f71e19a7d26a454491b486eb"
   "443e2c3c4dd44510f0ea8247b438e834188dc1c6fb80785d83ad3628eadf9294"
   "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525"
   "1cae4424345f7fe5225724301ef1a793e610ae5a4e23c023076dc334a9eb940a"
   "51c71bb27bdab69b505d9bf71c99864051b37ac3de531d91fdad1598ad247138"
   "636b135e4b7c86ac41375da39ade929e2bd6439de8901f53f88fde7dd5ac3561"
   "0c08a5c3c2a72e3ca806a29302ef942335292a80c2934c1123e8c732bb2ddd77"
   "70b596389eac21ab7f6f7eb1cf60f8e60ad7c34ead1f0244a577b1810e87e58c" default))
 '(package-selected-packages
   '(zen-mode nim-mode rust-mode md-readme markdown-preview-mode haskell-mode
   doom-themes evil gruvbox-theme)))
