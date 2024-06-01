;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-solarized-dark)

;;(setq doom-font (font-spec :family "Source Code Pro" :size 12))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "/ssh:sam@yoshi.crang.net:~/src/org")

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(after! evil-escape
  ;; https://discourse.doomemacs.org/t/typing-jk-deletes-j-and-returns-to-normal-mode/59
  (setq evil-escape-key-sequence "jj")
  (setq evil-escape-delay 0.25)
  ;; Allow vterm-mode to use `evil-escape-key-sequence`
  ;; https://github.com/doomemacs/doomemacs/blob/da3d0687c5008edbbe5575ac1077798553549a6a/modules/editor/evil/config.el#L298
  (setq evil-escape-excluded-major-modes '(neotree-mode treemacs-mode))
  ;; This will break C-c prefixed things but I'd rather the teminal "felt" more responsive
  ;; https://github.com/emacs-evil/evil-collection/blob/ca977acb83c0dd01fc57dbc6f3d3111e89f4ec9d/modes/vterm/evil-collection-vterm.el#L254
  (evil-define-key 'insert 'vterm-mode-map (kbd "C-c") 'vterm--self-insert))

(after! company
  (setq company-idle-delay 0.5))

(after! eglot
  (setq +lsp-defer-shutdown (* 60 10)))

(map! (:map evil-window-map
            ;; Swap behaviour
            "s"       #'+evil/window-split-and-follow
            "v"       #'+evil/window-vsplit-and-follow
            "S"       #'+evil-window-split
            "V"       #'+evil-window-vsplit))

(after! apheleia
  (setf (alist-get 'ruby-mode apheleia-mode-alist) '(rubocop))
  (setf (alist-get 'ruby-ts-mode apheleia-mode-alist) '(rubocop)))

(after! vterm
  (setq vterm-shell "/usr/local/bin/fish"))

(use-package! dape
  :preface
  :init
  :config)

(setq auth-sources '("~/.authinfo"))

(load-file (expand-file-name "~/.config/doom/secret.el"))
