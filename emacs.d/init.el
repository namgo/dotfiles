(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")))




(package-initialize)


;; load custom file 
(setq custom-file "~/.emacs.d/custom.el")

(unless (file-exists-p custom-file)
  (with-temp-buffer (write-file custom-file)))
