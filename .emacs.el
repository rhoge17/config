
;; default font

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(set-default-font "Andale Mono 18")

;; color-theme stuff
(add-to-list 'load-path "~/.emacs/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))

;; iMessage
(add-to-list 'load-path "~/.emacs/iMessage")
(require 'imessage)

;; org-mode stuff
(add-to-list 'load-path "~/.emacs/org-9.1.4")
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; org-mode files to automatically open on launch
(setq org-agenda-files (list "~/org/work.org"
                             "~/org/home.org"))

;; automatically open files in correct mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-to-list 'auto-mode-alist '("notes.txt" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".zshrc" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".zpreztorc" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".generic_profile" . shell-script-mode))
(add-to-list 'auto-mode-alist '(".mbsyncrc" . shell-script-mode))

;; needed for S-tab to work in org-mode
(global-set-key [backtab] 'org-shifttab)

;; mu4e - emacs email client
; add the source shipped with mu to load-path
(add-to-list 'load-path (expand-file-name "/usr/local/opt/mu/share/emacs/site-lisp/mu/mu4e/"))

; make sure emacs finds applications in /usr/local/bin and /usr/local/opt
(setq exec-path (cons "/usr/local/bin" exec-path))
(setq exec-path (cons "/usr/local/opt/w3m/bin/" exec-path))

; require mu4e
(require 'mu4e)

; tell mu4e where my Maildir is
(setq mu4e-maildir "/Users/rhoge/Maildir")

; tell mu4e how to sync email
(setq mu4e-get-mail-command "/usr/local/bin/mbsync -q McGill")
(setq mu4e-update-interval nil) ;; Update interval in seconds (nil for no update)

; to avoid duplicate UID errors
(setq mu4e-change-filenames-when-moving t)

; tell mu4e to use w3m for html rendering
(setq mu4e-html2text-command "/usr/local/bin/w3m -T text/html")

; taken from mu4e page to define bookmarks
;(add-to-list 'mu4e-bookmarks
;            '("size:5M..500M"       "Big messages"     ?b))

; mu4e requires to specify drafts, sent, and trash dirs
; a smarter configuration allows to select directories according to the account (see mu4e page)
(setq mu4e-drafts-folder "/McGill/Drafts")
(setq mu4e-sent-folder "/McGill/Sent Items")
(setq mu4e-trash-folder "/McGill/Deleted Items")
(setq mu4e-refile-folder "/McGill/Archive")

(add-to-list 'mu4e-user-mail-address-list "rick.hoge@mcgill.ca") 

;; various behaviours
(setq mu4e-sent-messages-behavior 'sent)
(setq mu4e-headers-show-threads nil)
(setq mu4e-compose-keep-self-cc nil)
(setq mu4e-compose-dont-reply-to-self t)

; settings to speed up re-index
(setq
  mu4e-index-cleanup nil      ;; don't do a full cleanup check
  mu4e-index-lazy-check t)    ;; don't consider up-to-date dirs

; don't page to next message with space-bar, when at end of a message
(setq mu4e-view-scroll-to-next nil)

; emacs-w3m settings
(add-to-list 'load-path "~/.emacs/emacs-w3m/")
(require 'w3m-load)
;(require 'mime-w3m)

; tell message-mode how to send mail
(require 'smtpmail)

(setq message-send-mail-function 'smtpmail-send-it
      starttls-use-gnutls t
      smtpmail-auth-credentials
      (expand-file-name "~/.authinfo")
      smtpmail-default-smtp-server "smtp.office365.com"
      smtpmail-smtp-server "smtp.office365.com"
      smtpmail-smtp-service 587
      smtpmail-debug-info t)

;; general emacs mail settings; used when composing e-mail
;; the non-mu4e-* stuff is inherited from emacs/message-mode
(setq mu4e-reply-to-address "rick.hoge@mcgill.ca"
      user-mail-address "rick.hoge@mcgill.ca"
      user-full-name  "Rick Hoge"
      smtpmail-smtp-service 587)
(setq mu4e-compose-signature
   "\nmu4e")

;; Keyboard Shortcuts
(setq mu4e-maildir-shortcuts
  '( ("/McGill/Inbox"         . ?i)
     ("/McGill/Archive"       . ?a)
     ("/McGill/Deleted Items" . ?t)
     ("/McGill/Sent Items"    . ?s)))

;; To deal with Office 365 Trash issues, search for "dtrash" in mu4e-mark.el
;; (mu4e~mark-check-target target) "+T-N")) and remove the "+T"

;; cask

(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

;;(require 'use-package "/Users/rhoge/Downloads/use-package-master/use-package.el")
(require 'use-package "/usr/local/share/emacs/site-lisp/use-package/use-package.el")

(require 'prodigy "/Users/rhoge/Downloads/prodigy.el-master/prodigy.el")

(use-package prodigy
  :ensure t
  :init (prodigy-define-tag
          :name 'email
          :ready-message "Checking Email using IMAP IDLE. Ctrl-C to shutdown.")
  (prodigy-define-service
    :name "imapnotify"
    :command "imapnotify"
    :args (list "-c" (expand-file-name ".shared_config_files/imapnotify.mcgill.js" (getenv "HOME")))
    :tags '(email)
    :kill-signal 'sigkill))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (prodigy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
