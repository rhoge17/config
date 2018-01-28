
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
(setq mu4e-update-interval 600) ;; Update interval in seconds (nil for no update)

; to avoid duplicate UID errors
(setq mu4e-change-filenames-when-moving t)

; tell mu4e to use w3m for html rendering
(setq mu4e-html2text-command "/usr/local/bin/w3m -T text/html")

;; mu4e bookmarks

(setq mu4e-bookmarks
      `( ,(make-mu4e-bookmark
	   :name  "Today"
	   :query "maildir:/McGill/Inbox AND date:today"
	   :key ?t)
	 ,(make-mu4e-bookmark
	   :name "Since yesterday"
	   :query "maildir:/McGill/Inbox AND date:2d..now"
	   :key ?y)
	 ,(make-mu4e-bookmark
	   :name "Last three days"
	   :query "maildir:/McGill/Inbox AND date:3d..now"
	   :key ?Y)
	 ,(make-mu4e-bookmark
	   :name "Last 7 days"
	   :query "maildir:/McGill/inbox AND date:7d..now"
	   :key ?w)
	 ,(make-mu4e-bookmark
	   :name "Last 14 days"
	   :query "maildir:/McGill/inbox AND date:14d..now"
	   :key ?W)))

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
(setq mu4e-compose-format-flowed t)
(setq mu4e-headers-date-format "%Y-%m-%d %H:%M")
;;(setq mu4e-view-show-addresses t)
(setq message-kill-buffer-on-exit t)

;; the following does not seem to work in 'brew' version
(setq mu4e-headers-advance-after-mark nil)
(setq mu4e-compose-in-new-frame t)

;; don't auto-fill (line wrap)
;; (defun no-auto-fill ()
;;   "Turn off auto-fill-mode."
;;   (auto-fill-mode -1))
;; (add-hook 'mu4e-compose-mode-hook #'no-auto-fill)

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

;; tell message-mode how to send mail

;; This code will use built-in emacs functionality, but mu4e will block during send
;; (require 'smtpmail)
;; (setq message-send-mail-function 'smtpmail-send-it
;;       starttls-use-gnutls t
;;       smtpmail-auth-credentials
;;       (expand-file-name "~/.authinfo")
;;       smtpmail-default-smtp-server "smtp.office365.com"
;;       smtpmail-smtp-server "smtp.office365.com"
;;       smtpmail-smtp-service 587
;;       smtpmail-debug-info t)


;; send mail using postfix - sends in background but requires setup outside emacs
(setq send-mail-function 'sendmail-send-it)
(setq message-send-mail-function 'message-send-mail-with-sendmail)

;; general emacs mail settings; used when composing e-mail
;; the non-mu4e-* stuff is inherited from emacs/message-mode
(setq mu4e-reply-to-address "rick.hoge@mcgill.ca"
      user-mail-address "rick.hoge@mcgill.ca"
      user-full-name  "Rick Hoge"
      smtpmail-smtp-service 587)
(setq mu4e-compose-signature
   "\nRick Hoge\nMcConnell Brain Imaging Centre\nMontreal Neurological Institute\nMcGill University")

;; Keyboard Shortcuts
(setq mu4e-maildir-shortcuts
  '( ("/McGill/Inbox"         . ?i)
     ("/McGill/Archive"       . ?a)
     ("/McGill/Deleted Items" . ?t)
     ("/McGill/Sent Items"    . ?s)))

;; To deal with Office 365 Trash issues, search for "dtrash" in mu4e-mark.el
;; (mu4e~mark-check-target target) "+T-N")) and remove the "+T"

(require 'mu4e-contrib) 
(setq mu4e-html2text-command 'mu4e-shr2text) 

;; Composition preferences
(add-hook 'mu4e-compose-mode-hook
	  (defun my-do-compose-stuff ()
	    "My settings for message composition."
	    (set-fill-column 72)
	    (flyspell-mode)))

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
    :args (list "-c" (expand-file-name "config/imapnotify.mcgill.js" (getenv "HOME")))
    :tags '(email)
    :kill-signal 'sigkill
    :auto-start t))

;; For unfilling paragraphs and regions
(defun unfill-paragraph ()
  (interactive)
  (let ((fill-column (point-max)))
    (fill-paragraph nil)))

(defun unfill-region ()
  (interactive)
  (let ((fill-column (point-max)))
    (fill-region (region-beginning) (region-end) nil)))

;; (setq mu4e-headers-fields
;;   '( (:human-date    .   12)
;;      (:flags         .    6)
;;      (:from          .   22)
;;      (:subject       .   nil))

(setq mu4e-headers-fields
      '( (:human-date    .  18)    ;; alternatively, use :human-date
	 (:flags         .   6)
	 (:from          .  27)
	 (:subject       .  nil))) ;; alternatively, use :thread-subject

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

;; Disable clutter
(setq inhibit-startup-screen t)
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; automatically launch emacs server and prodigy/imapnotify
(server-start)
(prodigy)
(prodigy-start)
(delete-other-windows)
