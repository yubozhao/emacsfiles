;;; package sources
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
;;; END

;;;;;;;;;;;;;;;;;;;; Evil ;;;;;;;;;;;;;;;;;;;;;
;;; turn on evil
(require 'evil)
(evil-mode t)
(setq evil-leader/in-all-states 1)
(global-evil-leader-mode)
(evil-leader/set-leader ",")
(require 'evil-search-highlight-persist)
(global-evil-search-highlight-persist t)
(evil-leader/set-key "<leader>/" 'evil-search-highlight-persist-remove-all)

;;; use "jk" as escape
(define-key evil-insert-state-map "j" #'cofi/maybe-exit)
(evil-define-command cofi/maybe-exit ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p)))
    (insert "j"))
    (let ((evt (read-event (format "Insert %c to exit insert state" ?k)
                                          nil 0.5))))
      (cond
        ((null evt) (message ""))
        ((and (integerp evt) (char-equal evt ?k))
      (delete-char -1)))
      (set-buffer-modified-p modified)
      (push 'escape unread-command-events))')
         (t (setq unread-command-events (append unread-command-events
                            (list evt))))))))

;;; surround
(require 'evil-surround)
(global-evil-surround-mode 1)')

;;; matchit beyond brackets
(require 'evil-matchit)
(global-evil-matchit-mode 1)

;;; powerline
(require 'powerline)
(powerline-evil-vim-color-theme)
(display-time-mode t)')


;;;;;;;;;;;;;;;;;;;;; helm ;;;;;;;;;;;;;;;;;;;;;;;
