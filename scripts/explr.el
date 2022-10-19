(defun explr  ()
  "Open Windows explorer in chosen dir"
  (interactive)
  (shell-command "explorer .")
  (message "Windows explorer was opened"))
