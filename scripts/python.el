(defun python-run (filename)
  (interactive
   (let ((insert-default-directory nil))
     (list (read-file-name "Filename: "))))
  (if (string= filename "")
      (setq filename (buffer-name)))
  (shell-command (concat "python " filename)))
