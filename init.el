;;; package sources
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
;;; END

;;; load path
(require 'package)
(package-initialize)
;;; END

;;; init stuff
(load-theme 'solarized-dark t)

