;;; color-theme-wombat+.el --- wombat with improvements and many more faces

;; Author: Scott Jaderholm <jaderholm@gmail.com>
;; URL: http://jaderholm.com/color-themes/color-theme-wombat+.el
;; Version: 0.0.3
;; Package-Requires: ((color-theme "6.6.1"))

;;; Commentary:

;; This theme is based on the wombat from VIM, but it has new faces for
;; regions, isearch, paren matching and many subtle differences for comments,
;; docstrings, etc. It also has many many original faces.


(eval-when-compile
  (require 'color-theme))
(defun color-theme-wombat+ ()
  "Color theme by Lars Nielsen, Emacsified by Peter Severin and Scott Jaderholm."
  (interactive)
  (color-theme-install
   '(color-theme-wombat+
     (
      (background-mode . dark)
      (border-color . "black")
      ;; (cursor-color . "yellow")
      (cursor-color . "magenta")
      ;; original wombat
      ;; (foreground-color . "#f6f3e8")
      ;; (background-color . "#242424")
      ;; old preference
      (foreground-color . "#f6f3e8")
      (background-color . "#303030")
      ;; brown
      ;; (foreground-color . "#f6f3e8")
      ;; (background-color . "#423323")
      ;; darker
      ;; (foreground-color . "#aaaaaa")
      ;; (background-color . "#242424")
      
      ;; inspired by principles video theme
      ;; (background-color . "#454545")
      ;; (foreground-color . "#abb1ad")

      ;; more contrast
      ;; (foreground-color . "#dadada")
      ;; (background-color . "#151515")
      
      (mouse-color . "black"))
     ((Man-overstrike-face . bold)
      (Man-reverse-face . highlight)
      (Man-underline-face . underline)
      (apropos-keybinding-face . underline)
      (apropos-label-face italic variable-pitch)
      (apropos-match-face . match)
      (apropos-property-face . bold-italic)
      (apropos-symbol-face . bold)
      (compilation-message-face . underline)
      (diary-face . diary)
      (goto-address-mail-face . italic)
      (goto-address-mail-mouse-face . secondary-selection)
      (goto-address-url-face . link)
      (goto-address-url-mouse-face . highlight)
      (highline-face . highline-face)
      (highline-vertical-face . highline-vertical-face)
      (list-matching-lines-buffer-name-face . underline)
      (list-matching-lines-face . match)
      (org-goto-interface . outline)
      (org-remember-interactive-interface . refile)
      (tags-tag-face . default)
      (view-highlight-face . highlight)
      (widget-mouse-face . highlight))
     (default ((t (:stipple nil
                            ;; :background "#242424"
                            :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :width normal))))
     (ac-candidate-face ((t (:background "#444444" :foreground "white"))))
     (ac-selection-face ((t (:background "#cae682" :foreground "black" :weight bold))))
     (ac-completion-face ((t (:underline t))))
     (popup-tip-face ((t (:background "#777" :foreground "white"))))
     (anything-bookmarks-su-face ((t (:foreground "red"))))
     (anything-dir-heading ((t (:background "Pink" :foreground "Blue"))))
     (anything-dir-priv ((t (:background "LightGray" :foreground "DarkRed"))))
     (anything-file-name ((t (:foreground "Blue"))))
     (anything-gentoo-match-face ((t (:foreground "red"))))
     (anything-header ((t (:foreground "grey90" :background "grey20" :box (:line-width -1 :style released-button)))))
     (anything-isearch-match ((t (:background "yellow" :foreground "black"))))
     (anything-overlay-line-face ((t (:background "IndianRed4" :underline t))))
     (anything-visible-mark ((t (:background "green1" :foreground "black"))))
     (anything-w3m-bookmarks-face ((t (:foreground "cyan1" :underline t))))
     (bold ((t (:bold t :weight bold))))
     (bold-italic ((t (:italic t :bold t :slant italic :weight bold))))
     (border ((t (:background "black"))))
     (buffer-menu-buffer ((t (:bold t :weight bold))))
     (button ((t (:underline t))))
     (calendar-today ((t (:underline t))))
     (comint-highlight-input ((t (:bold t :weight bold))))
     (comint-highlight-prompt ((t (:foreground "cyan1"))))
     (compilation-column-number ((t (:foreground "#cae682"))))
     (compilation-error ((t (:bold t :weight bold :foreground "Pink"))))
     (compilation-info ((t (:foreground "#87ffaf" :weight normal :underline t))))
     (compilation-line-number ((t (:foreground "grey80" :underline t))))
     (compilation-warning ((t (:bold t :foreground "Orange" :weight bold))))
     (completions-common-part ((t (:foreground "grey50"))))
     (completions-first-difference ((t (:bold t :weight bold :foreground "dodgerblue"))))
     (csv-separator-face ((t (:foreground "red"))))
     ;; (cursor ((t (:background "#656565"))))
     (cursor ((t (:background "magenta"))))
     (custom-button ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style released-button)))))
     (custom-button-mouse ((t (:background "grey90" :foreground "black" :box (:line-width 2 :style released-button)))))
     (custom-button-pressed ((t (:background "lightgrey" :foreground "black" :box (:line-width 2 :style pressed-button)))))
     (custom-button-pressed-unraised ((t (:underline t :foreground "violet"))))
     (custom-button-unraised ((t (:underline t))))
     (custom-changed ((t (:background "blue1" :foreground "white"))))
     (custom-comment ((t (:background "dim gray"))))
     (custom-comment-tag ((t (:foreground "gray80"))))
     (custom-documentation ((t (nil))))
     (custom-face-tag ((t (:bold t :weight bold :foreground "light blue"))))
     (custom-group-tag ((t (:bold t :family "Sans Serif" :foreground "light blue" :weight bold :height 1.2))))
     (custom-group-tag-1 ((t (:bold t :family "Sans Serif" :foreground "pink" :weight bold :height 1.2))))
     (custom-invalid ((t (:background "red1" :foreground "yellow1"))))
     (custom-link ((t (:bold t :weight bold :underline t :foreground "#8ac6f2"))))
     (custom-modified ((t (:background "blue1" :foreground "white"))))
     (custom-rogue ((t (:background "black" :foreground "pink"))))
     (custom-saved ((t (:underline t))))
     (custom-set ((t (:background "white" :foreground "blue1"))))
     (custom-state ((t (:foreground "lime green"))))
     (custom-themed ((t (:background "blue1" :foreground "white"))))
     (custom-variable-button ((t (:bold t :underline t :weight bold))))
     (custom-variable-tag ((t (:bold t :foreground "light blue" :weight bold))))
     (custom-visibility ((t (:bold t :weight bold :underline t :foreground "#8ac6f2" :height 0.8))))
     (diary ((t (:foreground "yellow1"))))
     (diary-anniversary ((t (:foreground "#8ac6f2"))))
     (diary-button ((t (nil))))
     (diary-time ((t (:foreground "#cae682"))))
     (dired-directory ((t (:foreground "#8ac6f2"))))
     (dired-flagged ((t (:bold t :weight bold :foreground "Pink"))))
     (dired-header ((t (:foreground "#ff5996"))))
     (dired-ignored ((t (:foreground "grey70"))))
     (dired-mark ((t (:foreground "#e5786d"))))
     (dired-marked ((t (:bold t :weight bold :foreground "Pink"))))
     (dired-perm-write ((t (:family "Terminus" :foundry "outline" :width normal :weight normal :slant normal :underline nil :overline nil :strike-through nil :box nil :inverse-video nil :foreground "#f6f3e8" :background "#242424" :stipple nil :height 120))))
     (dired-symlink ((t (:foreground "#00ffff" :weight bold))))
     (dired-warning ((t (:bold t :weight bold :foreground "Pink"))))
     (ediff-current-diff-A ((t (:background "pale green" :foreground "firebrick"))))
     (ediff-current-diff-Ancestor ((t (:background "VioletRed" :foreground "Black"))))
     (ediff-current-diff-B ((t (:background "Yellow" :foreground "DarkOrchid"))))
     (ediff-current-diff-C ((t (:background "Pink" :foreground "Navy"))))
     (ediff-even-diff-A ((t (:background "light grey" :foreground "Black"))))
     (ediff-even-diff-Ancestor ((t (:background "Grey" :foreground "White"))))
     (ediff-even-diff-B ((t (:background "Grey" :foreground "White"))))
     (ediff-even-diff-C ((t (:background "light grey" :foreground "Black"))))
     (ediff-fine-diff-A ((t (:background "sky blue" :foreground "Navy"))))
     (ediff-fine-diff-Ancestor ((t (:background "Green" :foreground "Black"))))
     (ediff-fine-diff-B ((t (:background "cyan" :foreground "Black"))))
     (ediff-fine-diff-C ((t (:background "Turquoise" :foreground "Black"))))
     (ediff-odd-diff-A ((t (:background "Grey" :foreground "White"))))
     (ediff-odd-diff-Ancestor ((t (:background "gray40" :foreground "cyan3"))))
     (ediff-odd-diff-B ((t (:background "light grey" :foreground "Black"))))
     (ediff-odd-diff-C ((t (:background "Grey" :foreground "White"))))
     (egg-an-tag-mono ((t (:bold t :weight bold :foreground "LightGreen"))))
     (egg-blame ((t (:background "grey15" :foreground "white"))))
     (egg-blame-culprit ((t (:family "Sans Serif" :background "grey15" :foreground "grey60" :height 1.1))))
     (egg-blame-subject ((t (:background "grey15" :family "Sans Serif" :foreground "white" :height 1.1))))
     (egg-branch ((t (:bold t :weight bold :family "Sans Serif" :foreground "Yellow" :height 1.2100000000000002))))
     (egg-branch-mono ((t (:bold t :weight bold :foreground "Yellow"))))
     (egg-diff-add ((t (:foreground "white"))))
     (egg-diff-conflict ((t (:foreground "Orange"))))
     (egg-diff-del ((t (:foreground "OrangeRed"))))
     (egg-diff-file-header ((t (:bold t :weight bold :family "Sans Serif" :foreground "LightSlateBlue" :height 1.1))))
     (egg-diff-hunk-header ((t (:background "grey45"))))
     (egg-diff-none ((t (:foreground "grey70"))))
     (egg-electrict-choice ((t (:bold t :family "Sans Serif" :foreground "Cyan" :weight bold))))
     (egg-graph ((t (:foreground "grey30"))))
     (egg-header ((t (:bold t :family "Sans Serif" :weight bold :height 1.1))))
     (egg-help-header-1 ((t (:bold t :foreground "SteelBlue" :family "Sans Serif" :weight bold))))
     (egg-help-header-2 ((t (:family "Sans Serif" :foreground "LightSteelBlue" :height 0.9))))
     (egg-help-key ((t (:bold t :foreground "Yellow" :weight bold :height 0.9))))
     (egg-log-HEAD ((t (:foreground "#f6f3e8" :background "#444444"))))
     (egg-log-buffer-mark ((t (:bold t :weight bold :foreground "orchid1"))))
     (egg-remote-mono ((t (:bold t :weight bold :foreground "DarkSalmon"))))
     (egg-section-title ((t (:bold t :weight bold :family "Sans Serif" :foreground "PaleGreen" :height 1.2100000000000002))))
     (egg-stash-mono ((t (:bold t :weight bold :foreground "LightGreen"))))
     (egg-tag-mono ((t (:bold t :weight bold :foreground "SkyBlue"))))
     (egg-term ((t (:bold t :weight bold :foreground "Yellow"))))
     (egg-text-1 ((t (:foreground "SteelBlue" :family "Sans Serif"))))
     (egg-text-2 ((t (:foreground "SteelBlue" :family "Sans Serif" :height 1.1))))
     (egg-text-3 ((t (:foreground "SteelBlue" :family "Sans Serif" :height 1.2))))
     (egg-text-4 ((t (:foreground "SteelBlue" :family "Sans Serif" :height 1.4))))
     (egg-text-base ((t (:family "Sans Serif" :foreground "SteelBlue"))))
     (egg-text-help ((t (:foreground "SteelBlue" :family "Sans Serif" :height 0.8))))
     (egg-unmerged-diff-file-header ((t (:bold t :family "Sans Serif" :weight bold :foreground "Orange" :height 1.1))))
     (egg-warning ((t (:bold t :weight bold :foreground "Orange"))))
     (emms-playlist-selected-face ((t (:foreground "SteelBlue3"))))
     (emms-playlist-track-face ((t (:foreground "DarkSeaGreen"))))
     (epa-field-body ((t (:italic t :foreground "turquoise" :slant italic))))
     (epa-field-name ((t (:bold t :foreground "PaleTurquoise" :weight bold))))
     (epa-mark ((t (:bold t :foreground "orange" :weight bold))))
     (epa-string ((t (:foreground "lightyellow"))))
     (epa-validity-disabled ((t (:italic t :slant italic))))
     (epa-validity-high ((t (:bold t :foreground "PaleTurquoise" :weight bold))))
     (epa-validity-low ((t (:italic t :slant italic))))
     (epa-validity-medium ((t (:italic t :foreground "PaleTurquoise" :slant italic))))
     (escape-glyph ((t (:foreground "cyan"))))
     ;; (clojure-test-failure-face ((((class color) (background dark)) (:background "tomato4"))))
     (clojure-test-failure-face ((t (:background "red" :foreground "white"))))
     (clojure-test-error-face ((t (:background "orange4"))))
     (clojure-test-success-face ((t (:background "green" :foreground "black"))))
     (esk-clojure-trace-face ((t (:foreground "grey50"))))
     (ffap ((t (:background "darkolivegreen"))))
     (file-name-shadow ((t (:foreground "grey70"))))
     (find-file-root-header-face ((t (:background "red3" :foreground "white"))))
     (fixed-pitch ((t (:family "Monospace"))))
     ;; (font-lock-builtin-face ((t (:foreground "#8ac6f2"))))
     (erc-timestamp-face ((t (:foreground "lightgreen"))))
     (font-lock-builtin-face ((t nil)))
     (font-lock-comment-delimiter-face ((t (:foreground "#99968b"))))
     (font-lock-comment-face ((t (:foreground "#99968b"))))
     (font-lock-constant-face ((t (:foreground "#e5786d"))))
     (font-lock-doc-face ((t (:foreground "#99968b" :weight bold))))
     (font-lock-function-name-face ((t (:foreground "#ff5996"))))
     (font-lock-keyword-face ((t (:foreground "#8ac6f2"))))
     (font-lock-negation-char-face ((t (:foreground "#e7f6da"))))
     (font-lock-preprocessor-face ((t nil)))
     (font-lock-regexp-grouping-backslash ((t (:bold t :weight bold))))
     (font-lock-regexp-grouping-construct ((t (:bold t :weight bold))))
     (font-lock-string-face ((t (:foreground "#95e454"))))
     ;; (font-lock-string-face ((t (:foreground "#87ffaf"))))
     ;; (font-lock-type-face ((t (:foreground "#9e6ffe"))))
     (font-lock-type-face ((t (:foreground "#e5786d"))))
     (font-lock-variable-name-face ((t (:foreground "#cae682"))))
     (font-lock-warning-face ((t (:bold t :foreground "Pink" :weight bold))))
     (magit-diff-del ((t (:foreground "#ff0080")))) ; "#ffaaaa"
     (magit-diff-add ((t (:foreground "#1AFF84")))) ; "#aaffaa"
     (diff-added ((t (:inherit magit-diff-add))))
     (diff-removed ((t (:inherit magit-diff-del))))
     (highlight-symbol-face ((t (:underline t))))
     (fringe ((t (:background "grey10"))))

     (header-line ((t (:box (:line-width -1 :style released-button) :background "grey20" :foreground "grey90" :box nil))))
     (help-argument-name ((t (nil))))
     (highlight ((t (:foreground "white" :background "royalblue3" ))))
     (highline-face ((t (:background "#444"))))
     (highline-vertical-face ((t (:background "#333"))))
     (hl-line ((t (:background "#444"))))
     (hl-spotlight ((t (:inherit highline-face))))
     (holiday ((t (:background "chocolate4"))))
     (ido-first-match ((t (:bold t :weight bold))))
     (ido-incomplete-regexp ((t (:bold t :weight bold :foreground "Pink"))))
     (ido-indicator ((t (:background "red1" :foreground "yellow1" :width condensed))))
     (ido-only-match ((t (:foreground "cyan" :weight bold))))
     (ido-subdir ((t (:foreground "#8ac6f2"))))
                                        ;     (isearch ((t (:background "#CAE682" :foreground "black"))))
                                        ;     (isearch ((t (:background "palevioletred2" :foreground "white"))))
     (isearch ((t (:background "#ff5996" :foreground "white"))))
                                        ;     (isearch ((t (:background "royalblue3" :foreground "white"))))
     (isearch-fail ((t (:background "red4"))))
     (italic ((t (:underline t))))
     (lazy-highlight ((t (:background "royalblue4" :foreground "white"))))
     (link ((t (:bold t :foreground "#8ac6f2" :underline t :weight bold))))
     (link-visited ((t (:bold t :weight bold :underline t :foreground "violet"))))
     ;; (linum ((t (:background "grey10" :foreground "#626262" :weight normal :slant normal :underline nil))))
     (linum ((t (:background "grey10" :foreground "#707070" :weight normal :slant normal :underline nil))))
     (match ((t (:background "RoyalBlue3"))))
                                        ;     (menu ((t (:foreground "systemmenu" :background "systemmenutext"))))
     (minibuffer-noticeable-prompt ((t (:foreground "#ff5996" :weight bold))))
     (minibuffer-prompt ((t (:foreground "#ff5996"))))
     (mode-line ((t (:background "grey75" :foreground "black" :box (:line-width -1 :style released-button)))))
     (mode-line-buffer-id ((t (:bold t :weight bold))))
     (mode-line-emphasis ((t (:bold t :weight bold))))
     (mode-line-highlight ((t (:box (:line-width 2 :color "grey40" :style released-button)))))
     (mode-line-inactive ((t (:background "grey30" :foreground "grey80" :box (:line-width -1 :color "grey40" :style nil) :weight light))))
     (mouse ((t (nil))))
     (mpg123-face-cur ((t (:background "#004080" :foreground "yellow"))))
     (mpg123-face-indicator ((t (:background "#7f3000" :foreground "yellow"))))
     (mpg123-face-slider ((t (:background "yellow" :foreground "black"))))
     (next-error ((t (:foreground "#f6f3e8" :background "#444444"))))
     (nobreak-space ((t (:foreground "cyan" :underline t))))
     (org-agenda-column-dateline ((t (:family "Terminus" :weight normal :slant normal :underline nil :strike-through nil :background "grey90" :height 120))))
     (org-agenda-date ((t (:foreground "Blue1"))))
     (org-agenda-date-today ((t (:italic t :bold t :foreground "Blue1" :slant italic :weight bold))))
     (org-agenda-date-weekend ((t (:bold t :foreground "Blue1" :weight bold))))
     (org-agenda-dimmed-todo-face ((t (:foreground "grey50"))))
     (org-agenda-done ((t (:foreground "PaleGreen"))))
     (org-agenda-restriction-lock ((t (:background "skyblue4"))))
     (org-agenda-structure ((t (:foreground "LightSkyBlue"))))
     (org-archived ((t (:foreground "grey70"))))
     (org-block ((t (:foreground "grey70"))))
     (org-checkbox ((t (:bold t :weight bold))))
     (org-clock-overlay ((t (:background "SkyBlue4"))))
     (org-code ((t (:foreground "grey70"))))
     (org-column ((t (:background "grey90" :strike-through nil :underline nil :slant normal :weight normal :height 120 :family "Terminus"))))
     (org-column-title ((t (:bold t :background "grey30" :underline t :weight bold))))
     (org-date ((t (:foreground "Cyan" :underline t))))
     (org-done ((t (:bold t :foreground "ForestGreen" :weight bold))))
     (org-drawer ((t (:foreground "LightSkyBlue"))))
     (org-ellipsis ((t (:foreground "LightGoldenrod" :underline t))))
     (org-footnote ((t (:foreground "Cyan" :underline t))))
     (org-formula ((t (:foreground "chocolate1"))))
     (org-headline-done ((t (:foreground "LightSalmon"))))
     (org-hide ((t (:foreground "black"))))
     (org-latex-and-export-specials ((t (:foreground "burlywood"))))
     (org-level-1 ((t (:foreground "#ff5996"))))
     (org-level-2 ((t (:foreground "#95e454"))))
     (org-level-3 ((t (:foreground "#9e6ffe"))))
     (org-level-4 ((t (:italic t :foreground "#99968b" :slant italic))))
     (org-level-5 ((t (:foreground "#cae682"))))
     (org-level-6 ((t (:foreground "#e5786d"))))
     (org-level-7 ((t (:foreground "#8ac6f2"))))
     (org-level-8 ((t (:italic t :foreground "#95e454" :slant italic))))
     (org-link ((t (:underline t))))
     (org-meta-line ((t (:italic t :slant italic :foreground "#99968b"))))
     (org-mode-line-clock ((t (:background "grey75" :foreground "black" :box (:line-width -1 :style released-button)))))
     (org-property-value ((t (nil))))
     (org-scheduled ((t (:foreground "PaleGreen"))))
     (org-scheduled-previously ((t (:foreground "chocolate1"))))
     (org-scheduled-today ((t (:foreground "PaleGreen"))))
     (org-agenda-date-today ((t (:foreground "#ff91af" :slant italic :weight bold))))
     (org-sexp-date ((t (:foreground "Cyan"))))
     (org-special-keyword ((t (:foreground "LightSalmon"))))
     (org-table ((t (:foreground "LightSkyBlue"))))
     (org-tag ((t (:bold t :weight bold))))
     (org-target ((t (:underline t))))
     (org-time-grid ((t (:foreground "LightGoldenrod"))))
     (org-todo ((t (:bold t :foreground "Red1" :weight bold))))
     (org-upcoming-deadline ((t (:foreground "chocolate1"))))
     (org-verbatim ((t (:foreground "grey70"))))
     (org-warning ((t (:bold t :weight bold :foreground "Pink"))))
     (outline-1 ((t (:foreground "#cae682"))))
     (outline-2 ((t (:foreground "#cae682"))))
     (outline-3 ((t (:foreground "#8ac6f2"))))
     (outline-4 ((t (:italic t :slant italic :foreground "#99968b"))))
     (outline-5 ((t (:foreground "#cae682"))))
     (outline-6 ((t (:foreground "#e5786d"))))
     (outline-7 ((t (:foreground "#8ac6f2"))))
     (outline-8 ((t (:italic t :slant italic :foreground "#95e454"))))
     (query-replace ((t (:foreground "brown4" :background "palevioletred2"))))
     (region ((t (:background "royalblue3"))))
     ;; (scroll-bar ((t (:foreground "systemscrollbar"))))
     (secondary-selection ((t (:background "#333"))))
     (shadow ((t (:foreground "grey70"))))
     (show-paren-match ((t (:bold t :background "royalblue3" :foreground "white" :weight bold))))
     (show-paren-mismatch ((t (:background "purple" :foreground "white"))))
     (sldb-catch-tag-face ((t (nil))))
     (sldb-condition-face ((t (nil))))
     (sldb-detailed-frame-line-face ((t (nil))))
     (sldb-frame-label-face ((t (nil))))
     (sldb-frame-line-face ((t (nil))))
     (sldb-local-name-face ((t (nil))))
     (sldb-local-value-face ((t (nil))))
     (sldb-non-restartable-frame-line-face ((t (nil))))
     (sldb-reference-face ((t (:underline t))))
     (sldb-restart-face ((t (nil))))
     (sldb-restart-number-face ((t (:bold t :weight bold))))
     (sldb-restart-type-face ((t (:foreground "#8ac6f2"))))
     (sldb-restartable-frame-line-face ((t (:foreground "lime green"))))
     (sldb-section-face ((t (nil))))
     (sldb-topline-face ((t (nil))))
     (slime-error-face ((t (:underline "red"))))
     (slime-highlight-edits-face ((t (:background "#eeeedd"))))
     (slime-highlight-face ((t (:background "darkolivegreen" :underline nil))))
     (slime-inspector-action-face ((t (:bold t :weight bold :foreground "Pink"))))
     (slime-inspector-label-face ((t (:foreground "#e5786d"))))
     (slime-inspector-topline-face ((t (nil))))
     (slime-inspector-type-face ((t (:foreground "#cae682"))))
     (slime-inspector-value-face ((t (:foreground "#8ac6f2"))))
     (slime-note-face ((t (:underline "light goldenrod"))))
     (slime-reader-conditional-face ((t (:italic t :slant italic :foreground "#99968b"))))
     (slime-repl-input-face ((t (:bold t :weight bold))))
     (slime-repl-inputed-output-face ((t (:foreground "#ff0080"))))
     (slime-repl-output-mouseover-face ((t (:foreground "Red" :box (:line-width 1 :color "black" :style released-button)))))
     (slime-repl-prompt-face ((t (:foreground "#8ac6f2"))))
     (slime-repl-output-face ((t (:foreground "#95e454"))))
     (slime-repl-result-face ((t (:foreground "hot pink"))))
     (slime-style-warning-face ((t (:underline "gold"))))
     (slime-warning-face ((t (:underline "coral"))))
     (speedbar-button-face ((t (:foreground "green3"))))
     (speedbar-directory-face ((t (:foreground "#cae682"))))
     (speedbar-file-face ((t (:foreground "cyan"))))
     (speedbar-highlight-face ((t (:background "sea green"))))
     (speedbar-selected-face ((t (:foreground "red" :underline t))))
     (speedbar-separator-face ((t (:background "blue" :foreground "white" :overline "gray"))))
     (speedbar-tag-face ((t (:foreground "yellow"))))
     (tabbar-default ((t (:inherit nil :stipple nil :background "gray80" :foreground "black" :box nil :strike-through nil :underline nil :slant normal :weight normal :height 80 :width normal))))
     (tabbar-selected ((t (:inherit tabbar-default :background "gray95" :foreground "gray20" :box (:line-width 1 :color "grey95")))))
     (tabbar-selected-modified ((t (:inherit tabbar-selected :weight bold))))
     (tabbar-unselected ((t (:inherit tabbar-default :background "gray80" :box (:line-width 1 :color "grey80")))))
     (tabbar-unselected-modified ((t (:inherit tabbar-unselected :weight bold))))

     (tmm-inactive ((t (:foreground "grey70"))))
                                        ;     (tool-bar ((t (:background "systembuttonface" :foreground "systembuttontext" :box (:line-width 1 :style released-button)))))
     (tooltip ((t (:family "Sans Serif" :background "#777" :foreground "#fff"))))
     (trailing-whitespace ((t (:background "red1"))))
     (underline ((t (:underline t))))
     (variable-pitch ((t (:family "Sans Serif"))))
     (vertical-border ((t (nil))))
     (widget-button ((t (:bold t :weight bold))))
     (widget-button-pressed ((t (:foreground "red1"))))
     (widget-documentation ((t (:foreground "lime green"))))
     (widget-field ((t (:background "dim gray"))))
     (widget-inactive ((t (:foreground "grey70"))))
     (widget-single-line-field ((t (:background "dim gray"))))
     (woman-addition ((t (:foreground "orange"))))
     (woman-bold ((t (:bold t :foreground "green2" :weight bold))))
     (woman-italic ((t (:italic t :underline t :slant italic))))
     (woman-symbol ((t (nil))))
     (magit-item-highlight ((((class color) (background dark)) (:background "grey20"))))
     (message-header-name ((((class color) (background dark)) (:foreground "#1aff84"))))
     (message-header-other ((((class color) (background dark)) (:foreground "#99968b"))))
     (message-header-subject ((t (:foreground "#ff0080" :weight bold))))
     (message-header-to ((t (:foreground "#99968b" :weight normal))))
     (notmuch-message-summary-face ((((class color) (background dark)) (:background "#303030" :weight bold))))
     (notmuch-search-count ((t (:inherit default :foreground "grey50"))))
     (notmuch-search-date ((t (:foreground "#99968b"))))
     (notmuch-search-matching-authors ((t (:foreground "#ff5996"))))
     (notmuch-search-subject ((t (:inherit default :foreground "#1aff84"))))
     (notmuch-tag-face ((t (:foreground "#8ac6f2" :weight normal))))
     (visible-mark-face ((t (:background "#666" :foreground "white"))))
     (visible-mark-non-trailing-face0 ((t (:foreground "magenta"))) t)
     (wg-mode-line-face ((t nil)))
     (compilation-info ((t (:inherit font-lock-function-face :weight bold))))
     (variable-pitch ((t nil)))
     (popup-isearch-match ((t (:background "royalblue" :foreground "white"))))
     (font-lock-fixme-face ((t (:stipple nil :weight normal :underline nil :background "red" :foreground "yellow" :inverse-video nil))) t)
     (eval-sexp-fu-flash ((t (:foreground "black" :background "#99968b" :weight bold))))
     (eval-sexp-fu-flash-error ((t (:background "red" :foreground "white" :weight bold))))
     (gnus-summary-selected ((t (:background "#555"))))
     (ft-gnus-diff-add ((t (:inherit magit-diff-add))) t)
     (ft-gnus-diff-header ((t (:inherit diff-header))) t)
     (ft-gnus-commit-message ((t (:inherit default))) t)
     (ft-gnus-diff-remove ((t (:inherit magit-diff-del))) t)
     (tabbar-default ((t (:inherit nil :stipple nil :background "#303030" :foreground "black" :box nil :strike-through nil :underline nil :slant normal :weight normal :height 0.9 :width normal :family "Lucida Grande"))))
     (tabbar-selected ((t (:inherit tabbar-default :background "#636363" :foreground "white" :box (:line-width 3 :color "#636363")))))
     (tabbar-selected-modified ((t (:inherit tabbar-selected :weight thin :height 0.9))))
     (tabbar-unselected ((t (:inherit tabbar-default :background "#3d3d3d" :foreground "#f6f3e8" :box (:line-width 3 :color "#3d3d3d")))))
     (tabbar-unselected-modified ((t (:inherit tabbar-unselected :weight bold :height 0.9))))
     (woman-unknown ((t (:foreground "cyan1")))))))
(add-to-list 'color-themes '(color-theme-wombat+  "Wombat+" "Scott Jaderholm <scott@jaderholm.com> and Peter Severin, original theme by Lars Nielsen"))

;;; color-theme-wombat+.el ends here
