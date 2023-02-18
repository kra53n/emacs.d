(defun add-auto-fill-mode ()
    (auto-fill-mode t))

(add-hook 'org-mode 'add-auto-fill-mode)
(add-hook 'markdown-mode 'add-auto-fill-mode)
