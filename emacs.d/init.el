(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; load custom file 
(setq custom-file "~/.emacs.d/custom.el")

(unless (file-exists-p custom-file)
  (with-temp-buffer (write-file custom-file)))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)

(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves/"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)

(use-package solarized-theme
  :config (load-theme 'solarized-dark t)
  :ensure t)

(set-face-attribute 'default nil
                    :family "Hack"
                    :height 110
                    :weight 'normal
                    :width 'normal)
(use-package lsp-mode
  :ensure t
  :commands lsp)
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)
(use-package company-lsp
  :ensure t
  :after company
  :commands company-lsp)

(use-package ccls
  :ensure t
  :after company
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp))))

(use-package c-mode
  :hook (c-mode . electric-pair-mode))

(use-package c++-mode
  :hook (c++-mode . electric-pair-mode))

(use-package company
  :ensure t
  :hook (emacs-lisp-mode . company-mode))

(use-package flycheck
  :ensure t)

(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files))
  :config (helm-mode t))

(use-package clojure-mode
  :ensure t)
(use-package cider
  :ensure t)
(use-package lispy
  :ensure t
  :hook (emacs-lisp-mode . lispy-mode)
  (clojure-mode . lispy-mode))

(use-package magit
  :ensure t)
(use-package undo-tree
  :ensure t
  :config (global-undo-tree-mode t))
