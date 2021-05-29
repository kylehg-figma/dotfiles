;; Other Modes
(add-to-list 'load-path "~/.emacs.d/modes")

;; Set default tab width
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)
(setq scss-compile-at-save nil)

;; Four spaces for C
(setq-default c-basic-offset 4)

;; Show column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; Show whitespace
(setq-default show-trailing-whitespace t)

;; Max line length 80
(setq-default fill-column 79)

;; Netlogo
(autoload 'netlogo-mode "netlogo-mode" "NetLogo Mode" t)
(add-to-list 'auto-mode-alist '("\\.nlogo\\'" . netlogo-mode))

;; Coq
(load-file "~/.emacs.d/modes/proof-general/generic/proof-site.el")
(global-set-key (kbd "C-c RET") 'proof-goto-point)

;; Yaml Mode
(autoload 'yaml-mode "yaml-mode" "Yaml Mode" t)
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

;; Use C Mode for OAT
(add-to-list 'auto-mode-alist '("\\.oat\\'" . c-mode))

;; Go Mode
(autoload 'go-mode "go-mode" "Go Mode" t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

;; OCaml Mode
(autoload 'tuareg-mode "tuareg-mode" "Tuareg Mode" t)
(add-to-list 'auto-mode-alist '("\\.ml\\'" . tuareg-mode))
(add-to-list 'auto-mode-alist '("\\.mli\\'" . tuareg-mode))
(add-to-list 'auto-mode-alist '("\\.mly\\'" . tuareg-mode))
(add-to-list 'auto-mode-alist '("\\.mll\\'" . tuareg-mode))

;; PHP Mode
(autoload 'php-mode "php-mode" "PHP Mode" t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

;; Markdown Mode
(autoload 'markdown-mode "markdown-mode" "Markdown Mode" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; Ruby
(autoload 'ruby-mode "ruby-mode" "Ruby Mode" t)
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))

;; SCSS
(autoload 'scss-mode "scss-mode" "SCSS Mode" t)
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; Less CSS
(autoload 'less-css-mode "less-css-mode" "LESS Mode" t)
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))

;; CoffeeScript
(autoload 'coffee-mode "coffee-mode" "CoffeeScript Mode" t)
(add-to-list 'auto-mode-alist '("\\.coffee\\'" . coffee-mode))

;; JavaScript
(autoload 'js2-mode "js2-mode" "JavaScript Mode" t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Clojure
(add-to-list 'load-path "~/.emacs.d/modes")
(require 'clojure-mode)

;; Haskell
(load "~/.emacs.d/modes/haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
(add-hook 'haskell-mode-hook 'font-lock-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(css-indent-offset 2)
 '(gud-gdb-command-name "gdb --annotate=1")
 '(inhibit-startup-screen t)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil)
 '(js2-mirror-mode t)
 '(js2-strict-missing-semi-warning nil)
 '(large-file-warning-threshold nil)
 '(standard-indent 2)
 '(tab-stop-list (quote (2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78)))
 '(tab-width 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
