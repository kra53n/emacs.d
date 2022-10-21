(defun rust-init (crate)
  (interactive "sCrate name: ")
  (shell-command (concat "cargo init " crate)))
