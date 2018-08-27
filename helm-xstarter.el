;;; helm-xstarter.el --- xstarter interface

;; Open external application with xstarter
;; Requires https://github.com/lchsk/xstarter to be installed

;; Author: Maciej lechowski
;; URL: https://github.com/lchsk/helm-xstarter
;; Version: 0.1.0
;; Package-Requires: ((helm "1.6.3"))
;; Keywords: xstarter, application launcher, launcher, c, helm

;;; Commentary:

;; Start an application using Helm interface.
;; Use `helm-xstarter' function.

;;; Code:

(require 'helm)

(defun helm-xstarter-open (arg)
  (shell-command (concat "xstarter -e" arg)))

(defcustom helm-xstarter-actions
  '(("Open application with xstarter" . helm-xstarter-open))
  "Actions for helm-xstarter"
  :group 'helm-xstarter
  :type '(alist :key-type string :value-type function))

(defun helm-xstarter-applications ()
  (setq stuff (shell-command-to-string "xstarter -P"))
  (setq files (split-string stuff "\n")))

(defun helm-xstarter()
  (interactive)
  (setq helm-xstarter-buffer
        (helm-build-sync-source "Applications"
          :candidates (helm-xstarter-applications)
          :action helm-xstarter-actions))

  (helm :sources 'helm-xstarter-buffer
        :buffer "*helm-xstarter*"))

(provide 'helm-xstarter)

;;; helm-xstarter.el ends here
