(defun git-clone (path)
  (interactive "sPath: ")
  (shell-command (concat "git clone " path)))

(defun getgit (repname)
  (interactive "sRepname: ")
  (shell-command (concat "getgit -r " repname)))
