;; -*- mode: emacs-lisp -*-
;; .emacs.d/init.el configuration
;; Thomas Emmerling

; use common-lisp
(require 'cl)

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode 1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;;----------------------------------------------------
;; -- Repository import --
;;----------------------------------------------------

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

;;----------------------------------------------------
;; -- Package management --
;;----------------------------------------------------

(defvar my-packages
  '(
    ace-jump-mode
    auto-complete
    autopair
    color-theme
    color-theme-solarized
    zenburn-theme
    ein
    elscreen
    exec-path-from-shell
    helm
    jedi
    key-chord
    magit
    minimap
    multi-term
    multiple-cursors
    org
    projectile
    python-mode
    smooth-scrolling
    yasnippet
    )
  "A list of packages to ensure are installed at launch.")

(defun my-packages-installed-p ()
  (loop for p in my-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

;;----------------------------------------------------
;; -- functions for getting infos about the system --
;;----------------------------------------------------

(defun system-is-mac ()
  (interactive)
  (string-equal system-type "darwin"))

(defun system-is-linux ()
  (interactive)
  (string-equal system-type "gnu/linux"))

;;----------------------------------------------------
;; -- Global settings --
;;----------------------------------------------------

(defun make-conf-path (path)
  "Shortcut to create the path of the configuration"
  (expand-file-name (concat base path)))

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/modules")

; requirements
(require 'magit)
(require 'ace-jump-mode)
;(require 'ido) ;ido mode
(require 'helm)
(require 'linum) ;show line numbers
(require 'ffap) ;find file at point
(require 'uniquify) ;better buffer names
(require 'ansi-color) ;try to visualize color values
(require 'recentf) ;maintain a 'recent files' list
(recentf-mode 1)
(require 'whitespace) ;visualize whitespaces, tabs, etc.
(require 'compile)
;; C-x C-j opens dired with the cursor right on the file you're editing
(require 'dired-x) ;enhanced dired
(require 'autopair)
(require 'flyspell)
(require 'flymake)
(require 'yasnippet)
(require 'ibuffer)
(require 'minimap)
(require 'multi-term)
(require 'multiple-cursors)
(require 'tramp)
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

(require 'tce-autocomplete)

(setq multi-term-program "/bin/zsh")
; make the multi-term emulator unicode compatible
(defadvice multi-term (after advise-multi-term-coding-system)
    (set-buffer-process-coding-system 'utf-8-unix 'utf-8-unix))
(ad-activate 'multi-term)

;; If you use Cocoa Emacs or Carbon Emacs
;; tic -o ~/.terminfo /usr/share/emacs/22.1/etc/e/eterm-color.ti

; enlarge term history
(add-hook 'term-mode-hook
          (lambda ()
            (setq term-buffer-maximum-size 10000)))

; disable some modes in term
(add-hook 'term-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)
            (autopair-mode -1)))

; set global modes
;; (ido-mode t)
;; (setq ido-save-directory-list-file "~/.emacs.d/.ido.last")
;; (setq ido-enable-flex-matching t)
;; (setq ido-use-filename-at-point 'guess)
;; (setq ido-show-dot-for-dired t)

(require 'helm-config)
(helm-mode 0)

(server-mode 1)

(setq show-trailing-whitespace t)
(setq suggest-key-bindings t)
(setq column-number-mode t)
(setq autopair-mode t)
(setq vc-follow-symlinks t)
(setq show-paren-mode t)
(setq transient-mark-mode t)
(setq eldoc-mode t)
(setq flyspell-mode t)

;; highlight current line
(global-hl-line-mode)

;; show line numbers on the left
(global-linum-mode 0)

;; whenever an external process changes a file underneath emacs, and there
;; was no unsaved changes in the corresponding buffer, just revert its
;; content to reflect what's on-disk.
(global-auto-revert-mode 1)

; always use spaces, not tabs, when indenting
(setq-default indent-tabs-mode -1)

; ignore case when searching
(setq-default case-fold-search 1)

; make sure transient mark mode is enabled (it should be by default,
; but just in case)
(transient-mark-mode 1)

;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; Save point position between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

;; Auto refresh buffers
(global-auto-revert-mode 1)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;;----------------------------------------------------
;; -- Visual customizations --
;;----------------------------------------------------

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode 1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;(load-theme 'solarized-light 1)
;(setq solarized-termcolors 256)

(require 'color-theme)

;; Set initial theme to "light"
(setq dark-or-light 'light)
(color-theme-solarized dark-or-light)

;; Shortcut to toggle between light and dark
(global-set-key (kbd "C-c d")
                  (lambda ()
                    (interactive)
		    (if (eq dark-or-light 'light)
			(setq dark-or-light 'dark)
		      (setq dark-or-light 'light)
		      )
                    (color-theme-solarized dark-or-light)))

;; default window width and height
(defun custom-set-frame-size ()
  (add-to-list 'default-frame-alist '(height . 52))
  (add-to-list 'default-frame-alist '(width . 170)))
(custom-set-frame-size)
(add-hook 'before-make-frame-hook 'custom-set-frame-size)

;; choose your own fonts, in a system dependant way
(if (system-is-mac)
    (set-fontset-font "fontset-default"
                      'unicode
                      '("Menlo")))

;; set font size
(set-face-attribute 'default nil :height 130)

; don't blink the cursor
(blink-cursor-mode -1)

; use a visual bell instead of an audio bell
(setq visible-bell 1)

(global-set-key [remap goto-line] 'goto-line-with-feedback)

(defun goto-line-with-feedback ()
  "Show line numbers temporarily, while prompting for the line number input"
  (interactive)
  (unwind-protect
      (progn
        (linum-mode 1)
        (goto-line (read-number "Goto line: ")))
    (linum-mode -1)))

;;----------------------------------------------------
;; -- Keybindings --
;;----------------------------------------------------

; Mac stuff
(when (string-match "apple-darwin" system-configuration)
  (setq mac-allow-anti-aliasing t)
  (setq mac-command-modifier 'meta)
  (setq mac-function-modifier 'none)
  (setq mac-control-modifier 'control)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
  (setq mac-option-modifier 'super))

;; use KeyRemap4MacBook to remap (held-down) return to control!!

;; Use the clipboard, pretty please, so that copy/paste "works"
(setq x-select-enable-clipboard t)

;; Navigate windows with M-<arrows>
(windmove-default-keybindings 'meta)
(setq windmove-wrap-around t)

;; default key to switch buffer is C-x b, but that's not easy enough
;;
;; when you do that, to kill emacs either close its frame from the window
;; manager or do M-x kill-emacs.  Don't need a nice shortcut for a once a
;; week (or day) action.
;(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)
;(global-set-key (kbd "C-x C-c") 'ido-switch-buffer)
;(global-set-key (kbd "C-x B") 'ibuffer)

;; add term switching
(add-hook 'term-mode-hook
          (lambda ()
            (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
            (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))))

;; add term pasting
(add-hook 'term-mode-hook
          (lambda ()
            (define-key term-raw-map (kbd "C-y") 'term-paste)))

(global-set-key "\C-c\C-t" 'multi-term)

(global-set-key "\M-\ " 'hippie-expand)

;; setup multiple cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(global-set-key (kbd "C-x g") 'webjump)

;; Add Urban Dictionary to webjump
(eval-after-load "webjump"
'(add-to-list 'webjump-sites
              '("Urban Dictionary" .
                [simple-query
                 "www.urbandictionary.com"
                 "http://www.urbandictionary.com/define.php?term="
                 ""])))

(defun open-line-below ()
  (interactive)
  (end-of-line)
  (newline)
  (indent-for-tab-command))

(defun open-line-above ()
  (interactive)
  (beginning-of-line)
  (newline)
  (forward-line -1)
  (indent-for-tab-command))

(global-set-key (kbd "<C-return>") 'open-line-below)
(global-set-key (kbd "<C-S-return>") 'open-line-above)

(global-set-key (kbd "M-j")
            (lambda ()
                  (interactive)
                  (join-line -1)))

;; Move more quickly
(global-set-key (kbd "C-S-n")
                (lambda ()
                  (interactive)
                  (ignore-errors (next-line 5))))

(global-set-key (kbd "C-S-p")
                (lambda ()
                  (interactive)
                  (ignore-errors (previous-line 5))))

(global-set-key (kbd "C-S-f")
                (lambda ()
                  (interactive)
                  (ignore-errors (forward-char 5))))

(global-set-key (kbd "C-S-b")
                (lambda ()
                  (interactive)
                  (ignore-errors (backward-char 5))))

;; Font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
(global-set-key (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;(global-set-key (kbd "C-x g") 'magit-status)

;; replace buffer-menu with ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;----------------------------------------------------
;; -- VCS --
;;----------------------------------------------------

;; full screen magit-status

(defadvice magit-status (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows))

(defun magit-quit-session ()
  "Restores the previous window configuration and kills the magit buffer"
  (interactive)
  (kill-buffer)
  (jump-to-register :magit-fullscreen))

(define-key magit-status-mode-map (kbd "q") 'magit-quit-session)

(require 'tce-python)
(require 'tce-elscreen)
