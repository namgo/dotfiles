(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")))

(package-initialize)

;; load custom file 
(setq custom-file "~/.emacs.d/custom.el")

(unless (file-exists-p custom-file)
  (with-temp-buffer (write-file custom-file)))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(use-package solarized-theme
  :config (load-theme 'solarized-dark t)
  :ensure t)

(set-face-attribute 'default nil
                    :family "Hack"
                    :height 110
                    :weight 'normal
                    :width 'normal)
