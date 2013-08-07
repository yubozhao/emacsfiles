;;; package sources
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
;;; END

;;; load path
(require 'package)
(require 'whitespace)
(package-initialize)
;;; END

;;; init stuff
(load-theme 'solarized-dark t)
;;; END

;;; Slime
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/slime")
(setq slime-lisp-implementations
           `((sbcl ("/opt/local/bin/sbcl"))
                    (abcl ("/opt/local/bin/abcl"))
                           (clisp ("/opt/local/bin/clisp"))))
(require 'slime)
(slime-setup  '(slime-repl slime-asdf slime-fancy slime-banner))
;;; END

;; Configure whitespace settings to display when we are over 80chars
(setq whitespace-style '(face empty tabs lines-tail trailing))
(setq whitespace-line-column 79)
(global-whitespace-mode 1)
(setq-default fill-column 79)

 ;; no startup msg
(setq inhibit-startup-message t)
;
; turn on paren match highlighting
(show-paren-mode 1)
;
; highlight entire bracket expression
(setq show-paren-style 'expression)
;
; display line numbers in margin
(global-linum-mode 1)
;
; display the column and line our cursor is on
(column-number-mode 1)
;
; stop creating those backup~ files
(setq make-backup-files nil)
;
; stop creating those #autosave# files
(setq auto-save-default nil)

; load auto complete mode
; (global-auto-complete-mode t)
(setq ac-source-yasnippet nil)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20130724.1750/dict")
(ac-config-default)


; yasnippet
(require 'yasnippet)
(yas/global-mode t)
