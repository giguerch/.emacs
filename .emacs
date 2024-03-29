;; Fichier de configuration (.emacs) de Charles-�douard Gigu�re.


;; ---- Configuration du package package ----
;; ==========================================


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want 
;; it, just comment it out by adding a semicolon to the start of 
;; the line.  You may delete these explanatory comments.
(package-initialize)

;; Add package manager. 
(setq package-check-signature nil)
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/")
	     t)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/")
	     t)

;; Configuration automatique fait dans l'application via package et customize.
;;; Configuration fait par emacs. 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   '("6752a763be62c7da5c70d04cd5f559c2f96479caa18809c54612cb918ba08708"
     "aad7fd3672aad03901bf91e338cd530b87efc2162697a6bef79d7f8281fd97e3"
     "243df3b393578c6a0c5d9fe2ab49aa2070e6e0ddc8a1ebda1191c4020d95a41f"
     "3d9df5511048d0815b1ccc2204cc739117c1a458be92fb26c03451149a1b1c11"
     "36a168d0f7f425bc3678acbed146fbd08a9736bc473284a01acc8c278da73ee7"
     "a4bebfbc2ee9c9b06ede499c783a711397e53be22195930bec3b69e335333e6c" default))
 '(elpy-rpc-python-command "c:/Python311/python.exe")
 '(elpy-rpc-pythonpath "c:/Users/gigc2/.emacs.d/elpa/elpy-20220922.2253/")
 '(ess-R-font-lock-keywords
   '((ess-R-fl-keyword:modifiers . t)
     (ess-R-fl-keyword:fun-defs . t)
     (ess-R-fl-keyword:keywords . t)
     (ess-R-fl-keyword:assign-ops . t)
     (ess-R-fl-keyword:constants . t)
     (ess-fl-keyword:fun-calls . t)
     (ess-fl-keyword:numbers . t)
     (ess-fl-keyword:operators . t)
     (ess-fl-keyword:delimiters . t)
     (ess-fl-keyword:= . t)
     (ess-R-fl-keyword:F&T . t)))
 '(ess-eval-visibly 'nowait)
 '(ess-history-file nil)
 '(ess-style 'RRR)
 '(ess-swv-pdflatex-commands '("pdflatex"))
 '(ess-swv-processor 'knitr)
 '(ess-use-flymake 'process)
 '(fill-column 85)
 '(inferior-R-args "--no-save --no-restore --no-init-file --no-environ")
 '(inferior-julia-program "c:/Julia/bin/julia.exe")
 '(inhibit-startup-screen t)
 '(ispell-dictionary nil)
 '(keyboard-coding-system 'utf-8)
 '(latex-run-command "pdflatex")
 '(make-backup-files nil)
 '(markdown-coding-system 'utf-8)
 '(package-selected-packages
   '(shades-of-purple-theme
     seti-theme
     rainbow-mode helm ess-r-insert-obj
     yasnippet-snippets poly-markdown
     poly-noweb yasnippet json-navigator
     json-mode base16-theme company
     flycheck poly-R ess dired-single
     markdown-mode polymode elpy magit auctex))
 '(python-shell-completion-native-disabled-interpreters '("pypy" "ipython"))
 '(python-shell-interpreter "ipython")
 '(safe-local-variable-values '((Encoding . utf-8)))
 '(selection-coding-system 'utf-8)
 '(send-mail-function 'mailclient-send-it))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))


;;; ---- Configuration diverse. ----
;;; ================================
(put 'scroll-left 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)



;; ---- Petit tirage pour varier le th�me d'une journ�e � l'autre ---- 
;; ===================================================================
;; chiffre de 0 � 1. 
(setq test (/ (random 10000) 10000.0))

(if (< test 0.20)
    (progn
      (load "c:/Users/gigc2/.emacs.d/FUSION-theme.el")
      (load-theme 'FUSION' t))
  (if (and (> test 0.20) (< test 0.40))
	(progn
	  (load "c:/Users/gigc2/.emacs.d/PURPLE_RAIN-theme.el")
	  (load-theme 'PURPLE_RAIN' t))
    (if (and (> test 0.40) (< test 0.60))
	(load-theme 'cobalt' t)
      (if (and (> test 0.60) (< test 0.80))
	  (load-theme 'shades-of-purple' t)
	(load-theme 'seti' t)))))



;; ---- Set h:/DCRFS/Statisticiens as default dir ----
;; ===================================================
(setq default-directory "h:/DCRFS/Statisticiens")


;; ---- Options pour company -----
;; ===============================

(add-hook 'after-init-hook 'global-company-mode)
(setq company-selection-wrap-around t
      company-tooltip-align-annotations t
      company-idle-delay 0.02
      company-minimum-prefix-length 2
      company-tooltip-limit 10)

;; ---- Section qui d�finit des shortcuts et des petits scripts ---
;; ================================================================
;;; Liste de raccourci de type f[0-9][0-9]
;;; ======================================
;;;   f1  aide emacs. 
;;;   f2  d�marrer un fichier avec le
;;;       programme par d�faut.
;;;   f3  d�marrer un macro.
;;;   f4  arr�ter un macro.
;;;   f5  V�rifier un mot.
;;; c-f5  fly-spell.
;;; c-f6  cr�er un fichier rmarkdown
;;;   f6  inserer un bout de code r dans
;;;       rmarkdown. 
;;;   f7  replace-regexp
;;;   f8  Entete
;;;   f9  Windows explorer to .
;;; C-f9  rouler un fichier rmarkdown avec render
;;;   f10 Menu
;;;   f11 full-screen
;;;   f12 kill-buffer
;;; ======================================

;;; Mettre F12 comme cl� pour fermer une fen�tre.
(fset 'kill-current-buffer
      (lambda () (interactive) (kill-buffer (current-buffer))))

(global-set-key (kbd "<f12>") 'kill-current-buffer)

;;; Ajout du raccourci pour faire un 
(global-set-key (kbd "<f9>") 
 		(lambda () (interactive) (shell-command "start \"\" \".\"")))

;;; Ent�te standard.
(fset 'entete
      (lambda (&optional arg) "Keyboard macro."
	(interactive "p")
	(insert (concat
		 "###     -*- Coding: utf-8 -*-          ###\n"
		 "### Analyste: Charles-�douard Gigu�re  ###\n"
		 "###                              .~    ###\n"
		 "###  _\\\\\\\\\\_                    ~.~    ###\n"
		 "### |  ~ ~  |                 .~~.     ###\n"
		 "### #--O-O--#          ==||  ~~.||     ###\n"
		 "### |   L   |        //  ||_____||     ###\n"
		 "### |  \\_/  |        \\\\  ||     ||     ###\n"
		 "###  \\_____/           ==\\\\_____//     ###\n"
		 "##########################################\n"
		 "\n"
		 "require(dplyr, quietly = TRUE, warn.conflicts = FALSE)\n"
		 "require(ggplot2, quietly = TRUE, warn.conflicts = FALSE)\n"
		 "theme_set(theme_bw() + theme(legend.position = \"bottom\"))\n"
		 "require(CUFF, quietly = TRUE, warn.conflicts = FALSE)\n"))))

(global-set-key (kbd "<f8>") 'entete)

(fset 'entete_roxygen
      (lambda (&optional arg) "Keyboard macro."
	(interactive "p")
	(insert
	 (concat
	  "#' --- \n"
	  "#' author: Charles-�douard Gigu�re\n"
	  "#' title: Rapport g�n�r� des commentaires et de la syntaxe.\n"
	  "#' date: " (format-time-string "%Y-%m-%d")  "\n"
	  "#' output:\n"
	  "#'   pdf_document\n"
	  "#' fontsize: 24pt\n"
	  "#' ---\n"
	  "\n"
	  "\n"
	  "#+ \"Pr�paration du rapport\", echo = FALSE, results = \"hide\"\n"
	  "\n"
	  "require(dplyr, quietly = TRUE, warn.conflicts = FALSE)\n"
	  "require(ggplot2, quietly = TRUE, warn.conflicts = FALSE)\n"
	  "theme_set(theme_bw() + theme(legend.position = \"bottom\"))\n"
	  "require(CUFF, quietly = TRUE, warn.conflicts = FALSE)\n"
	  "require(knitr, quietly = TRUE, warn.conflicts = FALSE)\n"
	  "opts_chunk$set(echo = FALSE, prompt = TRUE,\n"
          "               comment = \"\", cache = TRUE)\n"))))

(global-set-key (kbd "C-<f8>") 'entete_roxygen)

;;; Ce macro permet de partir les documents avec le bon programme
;;; dans windows. 
(defun xah-open-in-external-app ()
  "Open the current file or dired marked files in external app.
   The app is chosen from your OS's preference.
   URL `http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html'
   Version 2015-01-26"
  (interactive)
  (let* (
         (-file-list
          (if (string-equal major-mode "dired-mode")
              (dired-get-marked-files)
            (list (buffer-file-name))))
         (-do-it-p (if (<= (length -file-list) 5)
                       t
                     (y-or-n-p "Open more than 5 files? "))))
    
    (when -do-it-p
      (cond
       ((string-equal system-type "windows-nt")
        (mapc
         (lambda (fPath)
           (w32-shell-execute
	    "open"
	    (replace-regexp-in-string "/" "\\"
				      fPath t t))) -file-list))
       ((string-equal system-type "darwin")
        (mapc
         (lambda (fPath) (shell-command
			  (format "open \"%s\"" fPath)))  -file-list))
       ((string-equal system-type "gnu/linux")
        (mapc
         (lambda (fPath)
	   (let ((process-connection-type nil))
	     (start-process "" nil "xdg-open" fPath))) -file-list))))))

(global-set-key (kbd "<f2>") 'xah-open-in-external-app) 

(fset 'insert-r-block
      (lambda (&optional arg) "Keyboard macro."
	(interactive "p")
	(kmacro-exec-ring-item
	 (quote ([?` ?` ?` ?\{ ?r ?\} return return ?` ?` ?` up] 0 "%d"))
	 arg)))
(global-set-key (kbd "<f6>") 'insert-r-block)

(fset 'rmarkdown-template
      (lambda (&optional arg) "Keyboard macro."
	(interactive "p")
	(insert-file "c:/Charles/Statistiques/Rmarkdown/template.Rmd")
	)
      )

(global-set-key (kbd "C-<f6>") 'rmarkdown-template)



;;; Raccourci pour remplacer des expressions r�guli�res.
(global-set-key (kbd "<f7>") 'replace-regexp)



;; ---- Configuration pour les r�pertoires ----
;; ============================================
(defun my-dired-init ()
  "Instruction au d�marrage de dired-single"
  (define-key dired-mode-map [return] 'dired-single-buffer)
  (define-key dired-mode-map [mouse-1] 'dired-single-buffer-mouse)
  (define-key dired-mode-map "^"
    (function
     (lambda nil (interactive) (dired-single-buffer "..")))))



;;; On peut loader les instructions pr�c�dentes lorsqu'on
;;; utilise les r�pertoires.
(if (boundp 'dired-mode-map)
    ;; on ajoute nos specs.
    (my-dired-init)
  ;; si dired n'est pas load� on ajoute un hook.
  (add-hook 'dired-load-hook 'my-dired-init))

;;; ---- Markdown mode ----
;;; =======================
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))


(require 'poly-R)
(require 'poly-markdown)
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))
(setq polymode-display-output-file nil)


(defun markdown-match-propertized-text (property last)
  "Match text with PROPERTY from point to LAST.
Restore match data previously stored in PROPERTY."
  (let ((saved (get-text-property (point) property))
        pos)
    (unless saved
      (setq pos (next-single-char-property-change (point) property nil last))
      (setq saved (get-text-property pos property)))
    (when saved
      (set-match-data saved)
      ;; Step at least one character beyond point. Otherwise
      ;; `font-lock-fontify-keywords-region' infloops.
      (goto-char (min (1+ (max (match-end 0) (point)))
                      (point-max)))
      saved)))

;; ---- Mplus mode ----
;; ====================
(load "C:/charles/Statistiques/Mplus_mode/mplus-mode.el")
(setq auto-mode-alist (cons '("\\.inp" . mplus-mode) auto-mode-alist))
(add-hook 'mplus-mode-hook
	  (lambda ()
	    (load "C:/Charles/Statistiques/Mplus_mode/company-mplus-mode.el")
	    (setq-local company-dabbrev-downcase nil)))

;; ---- pour aller avec github ----
;; ================================
(setenv "GIT_ASKPASS" "git-gui--askpass")

;; ---- elpy - python environment ----
;; ===================================
(add-hook 'python-mode-hook
	  (lambda ()
	    (elpy-enable)))

;; ---- Diff�rent template de Rmd ----
;; ===================================

(defun rap-rmd ()
  "Insertion d'un fichier R markdown"
  (interactive)
  
  (setq fichier (read-from-minibuffer "Nom du fichier: " "Rapport"))
  (setq frmd (replace-regexp-in-string "Rapport" fichier "./Rapport.Rmd" 1))
  (setq fbib (replace-regexp-in-string "Rapport" fichier "./Rapport.bib" 1))
  (setq titre (read-from-minibuffer "Titre: "))
  (setq abstract (read-from-minibuffer "Abstract: "))
  (setq keywords (read-from-minibuffer "Keyword: "))
  (copy-file  "C:/Charles/Statistiques/Rmarkdown/CEG-svm-template.Rmd"
	      frmd nil)
  (find-file frmd)
  (switch-to-buffer  (concat fichier ".Rmd"))
  (replace-regexp "Title" titre)
  (replace-regexp "Abstract" abstract)
  (replace-regexp "Keywords" keywords)
  (replace-regexp "rapport.bib" fbib)
  (copy-file "C:/Charles/Statistiques/Rmarkdown/Rapport.bib"
	     fbib nil) 
)

(defun tufte-rmd ()
  "Insertion d'un fichier R markdown"
  (interactive)
  
  (setq fichier (read-from-minibuffer "Nom du fichier: " "Rapport"))
  (setq frmd (replace-regexp-in-string "Rapport" fichier "./Rapport.Rmd" 1))
  (setq titre (read-from-minibuffer "Titre: "))
  (copy-file  "c:/Charles/Statistiques/Rmarkdown/Tufte/Tufte_template.Rmd"
	      frmd nil)
  (find-file frmd)
  (switch-to-buffer  (concat fichier ".Rmd"))
  (replace-regexp "Titre" titre)
  (replace-regexp "auj" (format-time-string "%Y-%m-%d"))
  (copy-file "c:/Charles/Statistiques/Rmarkdown/Tufte/Tufte.bib"
	     "./Tufte.bib" nil) 
  )

(defun roxygen-rmd ()
  "Insertion d'un fichier R pour rapport avec R oxygen"
  (interactive)
  
  (setq fichier (read-from-minibuffer "Nom du fichier: " "Rapport"))
  (setq frmd (replace-regexp-in-string "Rapport" fichier "./Rapport.R" 1))
  (setq titre (read-from-minibuffer "Titre: "))
  (copy-file  "c:/Charles/Statistiques/Rmarkdown/Roxygen/Roxygen_template.R"
	      frmd nil)
  (find-file frmd)
  (switch-to-buffer  (concat fichier ".R"))
  (replace-regexp "Titre" titre)
  (replace-regexp "auj" (format-time-string "%Y-%m-%d"))
  (copy-file "c:/Charles/Statistiques/Rmarkdown/Roxygen/Oxygen.bib"
	     "./Oxygen.bib" nil) 
)

(defun word-rmd ()
  "Insertion d'un fichier R pour rapport avec R oxygen"
  (interactive)
  
  (setq fichier (read-from-minibuffer "Nom du fichier: " "Rapport"))
  (setq frmd (replace-regexp-in-string "Rapport" fichier "./Rapport.Rmd" 1))
  (setq titre (read-from-minibuffer "Titre: "))
  (copy-file  "c:/Charles/Statistiques/Rmarkdown/Word/word_template.Rmd"
	      frmd nil)
  (find-file frmd)
  (switch-to-buffer  (concat fichier ".Rmd"))
  (replace-regexp "Titre" titre)
  (replace-regexp "auj" (format-time-string "%Y-%m-%d"))
  (copy-file "c:/Charles/Statistiques/Rmarkdown/Word/Rapport.bib"
	     "./Rapport.bib" nil) 
)

(defun then_R_operator ()
  "%>% operator or 'then' pipe operator"
  (interactive)
  (insert " %>%") ; note the space before the first %
  (reindent-then-newline-and-indent))
(global-set-key (kbd "C-;") 'then_R_operator)


(defun break_quote ()
  "Break long line with %+%"
  (interactive)
  (insert " \" %+%") ; note the space before the first %
  (reindent-then-newline-and-indent)
  (insert "\""))

(global-set-key (kbd "C-,") 'break_quote)

(defun break_quote_no_space ()
  "Break long line with %+%"
  (interactive)
  (insert "\" %+%") ; note the space before the first %
  (reindent-then-newline-and-indent)
  (insert "\""))

(global-set-key (kbd "C-.") 'break_quote_no_space)



;; ---- Mode pour avoir les fichiers r�cents sur lesquels ont a travaill� ----
;; ===========================================================================
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; ---- Option pour pouvoir utiliser des snippets ----
;; ===================================================
(require 'yasnippet)
(yas-global-mode 1)




;;; ----- Package pour ajouter des variables -----
;;; ==============================================

(require 'ess-r-insert-obj)
(global-set-key (kbd "C-<tab>") 'ess-r-insert-obj-col-name)
(global-set-key (kbd "C-c C-<tab>") 'ess-r-insert-obj-dt-name)


;;; ----- Autre configuration diverse ------
;;; ========================================

;;; Markdown mode
;;;(defun rmd-mode ()
;;;  "ESS Markdown mode for rmd files"
;;;  (interactive)
;;;  (setq load-path 
;;;	(append (list "~/.emacs.d/elpa/polymode/"
;;;		      "~/.emacs.d/elpa/polymode/modes/")
;;;        load-path))
;;;  (require 'poly-R)
;;;  (require 'poly-markdown)     
;;;  (poly-markdown+r-mode))
;;;


;; (add-to-list 'auto-mode-alist '("\\.Rmd" . rmd-mode))

(defun markdown-match-propertized-text (property last)
  "Match text with PROPERTY from point to LAST.
Restore match data previously stored in PROPERTY."
  (let ((saved (get-text-property (point) property))
        pos)
    (unless saved
      (setq pos (next-single-char-property-change (point) property nil last))
      (setq saved (get-text-property pos property)))
    (when saved
      (set-match-data saved)
      ;; Step at least one character beyond point. Otherwise
      ;; `font-lock-fontify-keywords-region' infloops.
      (goto-char (min (1+ (max (match-end 0) (point)))
                      (point-max)))
      saved)))

(add-hook 'Latex-mode-hook 'turn-on-auto-fill)

(setq dired-listing-switches "-alh")

(add-to-list 'load-path
             "~/.emacs.d/snippets/")

(setq default-process-coding-system '(utf-8 . utf-8))
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-language-environment 'utf-8)
(set-selection-coding-system 'utf-8)

(defun rmd-run ()
  "Insertion d'un fichier R pour rapport avec R oxygen"
  (interactive)
  (ess-send-string (get-process "R")
		   (concat "rmarkdown::render(\""
			   (buffer-file-name)
			   "\", encoding = \"utf-8\")")
		   )
)
(global-set-key (kbd "C-<f9>") 'rmd-run)

(setq ess-use-flymake nil)

(defun my-inferior-ess-init ()
  (setq-local ansi-color-for-comint-mode 'filter))
(add-hook 'inferior-ess-mode-hook 'my-inferior-ess-init)

