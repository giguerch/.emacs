;; Charles-Édouard Giguère.

(setq default-process-coding-system '(utf-8-dos . utf-8-dos))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want 
;; it, just comment it out by adding a semicolon to the start of 
;; the line.  You may delete these explanatory comments.
(package-initialize)

;; Add package manager. 
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/")
	     t)
;;(add-to-list 'package-archives
;;	     '("melpa" . "http://melpa.org/packages/")
;;	     t)

;;
;;(load "c:/Users/gigc2/AppData/Roaming/.emacs.d/elpa/base16-theme-20191031.1607/base16-rebecca-theme.el")
;;Load purple rain theme. 
(load "c:/Users/gigc2/AppData/Roaming/.emacs.d/PURPLE_RAIN-theme.el")
(load "c:/Users/gigc2/AppData/Roaming/.emacs.d/FUSION-theme.el")


;; 
;;; Configuration fait par emacs. 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes '(FUSION))
 '(custom-safe-themes
   '("161993d0fe35db6321a69a5427d0900380f2b855013b698c6cf70d20c7bb43fa" "3d9df5511048d0815b1ccc2204cc739117c1a458be92fb26c03451149a1b1c11" "36a168d0f7f425bc3678acbed146fbd08a9736bc473284a01acc8c278da73ee7" "a4bebfbc2ee9c9b06ede499c783a711397e53be22195930bec3b69e335333e6c" default))
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
 '(ess-default-style 'DEFAULT)
 '(ess-eval-visibly 'nowait)
 '(ess-history-file nil)
 '(ess-rterm-version-paths '("c:/R/R-4.1.3/bin/x64/Rterm.exe"))
 '(ess-style 'RRR)
 '(ess-swv-pdflatex-commands '("pdflatex"))
 '(ess-swv-processor 'knitr)
 '(ess-use-flymake 'process)
 '(exec-path
   '("c:/Users/gigc2/AppData/Roaming/ActiveState/bin" "C:/Program Files (x86)/Common Files/Oracle/Java/javapath" "C:/Program Files/Microsoft MPI/Bin/" "C:/WINDOWS/system32" "C:/WINDOWS" "C:/WINDOWS/System32/Wbem" "C:/WINDOWS/System32/WindowsPowerShell/v1.0/" "C:/Program Files (x86)/Microsoft SQL Server/150/DTS/Binn/" "C:/Program Files/dotnet/" "C:/Program Files/Microsoft SQL Server/130/Tools/Binn/" "C:/Program Files/Microsoft SQL Server/Client SDK/ODBC/170/Tools/Binn/" "C:/Program Files/Microsoft SQL Server/Client SDK/ODBC/130/Tools/Binn/" "C:/Program Files (x86)/Microsoft SQL Server/140/Tools/Binn/" "C:/Program Files/Microsoft SQL Server/140/Tools/Binn/" "C:/Program Files/Microsoft SQL Server/140/DTS/Binn/" "C:/Program Files (x86)/QuickTime/QTSystem/" "C:/Program Files/Wolfram Research/WolframScript/" "C:/Program Files/MATLAB/R2020b/bin" "C:/WINDOWS/System32/OpenSSH/" "C:/Program Files/nodejs/" "C:/WINDOWS/system32" "C:/WINDOWS" "C:/WINDOWS/System32/Wbem" "C:/WINDOWS/System32/WindowsPowerShell/v1.0/" "C:/Program Files/Git/cmd" "C:/Program Files/Mplus/" "C:/Program Files (x86)/Intel/Intel(R) Management Engine Components/DAL" "C:/Program Files/Intel/Intel(R) Management Engine Components/DAL" "C:/Users/gigc2/AppData/Local/Microsoft/WindowsApps" "C:/Program Files/Mplus" "C:/Users/gigc2/AppData/Local/Pandoc/" "C:/Users/gigc2/AppData/Local/Programs/Git/cmd" "C:/rtools42/usr/bin" "C:/R/R-4.2.0/bin/x64" "C:/Users/gigc2/AppData/Local/Programs/Microsoft VS Code/bin" "C:/Users/gigc2/.dotnet/tools" "C:/Python39/" "C:/Python39/Scripts" "C:/Julia/bin" "C:/Users/gigc2/AppData/Local/Microsoft/WindowsApps" "C:/Users/gigc2/AppData/Roaming/npm" "C:/rtools42/mingw64/bin" "C:/Users/gigc2/.dotnet/tools" "C:/Program Files/Graphviz/bin" "C:/Users/gigc2/AppData/Roaming/TinyTeX/bin/win32" "." "c:/Users/gigc2/Documents/GnuEmacs27.2/emacs-27.2-x86_64/libexec/emacs/27.2/x86_64-w64-mingw32" "c:/R/R-4.1.3/bin/x64/"))
 '(inferior-R-args "--no-save --no-restore --no-init-file --no-environ")
 '(inhibit-startup-screen t)
 '(ispell-dictionary nil)
 '(julia-arguments '("--color=no"))
 '(keyboard-coding-system 'utf-8)
 '(make-backup-files nil)
 '(markdown-coding-system 'utf-8)
 '(package-selected-packages
   '(hydandata-light-theme julia-repl ess-r-insert-obj ess yasnippet-snippets async dash find-file-in-project git-commit ivy julia-mode poly-markdown poly-noweb pythonic pyvenv transient with-editor yasnippet json-navigator json-mode base16-theme stan-mode company flycheck poly-R dired-single markdown-mode polymode elpy magit auctex))
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
 
 

(setq test (/ (random 10000) 10000.0))

;;Load fusion theme.
(if (< test 0.34)
    (load-theme 'FUSION' t)
    (if (and (> test 0.34) (< test 0.67))
	(load-theme 'PURPLE_RAIN' t) 
      (load-theme 'cobalt' t)))



;; Set F:/CEG as default dir.
(setq default-directory "h:/DCRFS/Statisticiens")

;;; Add key to close current buffer.
(fset 'kill-current-buffer
      (lambda () (interactive) (kill-buffer (current-buffer))))

(global-set-key (kbd "<f12>") 'kill-current-buffer)

;;; Ajout du raccourci pour faire un 
(global-set-key (kbd "<f9>") 
 		(lambda () (interactive) (shell-command "start \"\" \".\"")))

;;; Entête standard.
(fset 'entete
      (lambda (&optional arg) "Keyboard macro."
	(interactive "p")
	(insert (concat
		 "###     -*- Coding: utf-8 -*-          ###\n"
		 "### Analyste: Charles-Édouard Giguère  ###\n"
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
	  "#' author: Charles-Édouard Giguère\n"
	  "#' title: Rapport généré des commentaires et de la syntaxe.\n"
	  "#' date: " (format-time-string "%Y-%m-%d")  "\n"
	  "#' output:\n"
	  "#'   pdf_document\n"
	  "#' fontsize: 12pt\n"
	  "#' ---\n"
	  "\n"
	  "\n"
	  "#+ \"Préparation du rapport\", echo = FALSE, results = \"hide\"\n"
	  "\n"
	  "require(dplyr, quietly = TRUE, warn.conflicts = FALSE)\n"
	  "require(ggplot2, quietly = TRUE, warn.conflicts = FALSE)\n"
	  "theme_set(theme_bw() + theme(legend.position = \"bottom\"))\n"
	  "require(CUFF, quietly = TRUE, warn.conflicts = FALSE)\n"
	  "require(knitr, quietly = TRUE, warn.conflicts = FALSE)\n"
	  "opts_chunk$set(echo = FALSE, prompt = TRUE,\n"
          "               comment = \"\", cache = TRUE)\n"))))

(global-set-key (kbd "C-<f8>") 'entete_roxygen)

(add-hook 'after-init-hook 'global-company-mode)


;;; Mettre F12 comme clé pour fermer une fenêtre.
(fset 'kill-current-buffer
      (lambda () (interactive) (kill-buffer (current-buffer))))

(global-set-key (kbd "<f12>") 'kill-current-buffer)

;;; Mettre F9 pour démarrer une fenêtre d'exploration.
(global-set-key (kbd "<f9>")
		(lambda () (interactive) (shell-command "start \"\" \".\"")))


(load "ess-site")
(setq ess-use-company 'script-only)


(setq company-selection-wrap-around t
      company-tooltip-align-annotations t
      company-idle-delay 0.03
      company-minimum-prefix-length 2
      company-tooltip-limit 10)

;;; Raccourci pour remplacer des expressions régulières.
(global-set-key (kbd "<f7>") 'replace-regexp)

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


;;; Liste de raccourci de type f[0-9][0-9]
;;; ======================================
;;;   f1  aide emacs. 
;;;   f2  démarrer un fichier avec le
;;;       programme par défaut.
;;;   f3  démarrer un macro.
;;;   f4  arrêter un macro.
;;;   f5  Vérifier un mot.
;;; c-f5  fly-spell.
;;; c-f6  créer un fichier rmarkdown
;;;   f6  inserer un bout de code r dans
;;;       rmarkdown. 
;;;   f7  replace-regexp
;;;   f8  Entete
;;;   f9  Windows explorer to . 
;;;   f10 Menu
;;;   f11 full-screen
;;;   f12 kill-buffer
;;; ======================================

;;; Configuration pour les répertoires.
(defun my-dired-init ()
  "Instruction au démarrage de dired-single"
  (define-key dired-mode-map [return] 'dired-single-buffer)
  (define-key dired-mode-map [mouse-1] 'dired-single-buffer-mouse)
  (define-key dired-mode-map "^"
    (function
     (lambda nil (interactive) (dired-single-buffer "..")))))

;;; On peut loader les instructions précédentes lorsqu'on
;;; utilise les répertoires.
(if (boundp 'dired-mode-map)
    ;; on ajoute nos specs.
    (my-dired-init)
  ;; si dired n'est pas loadé on ajoute un hook.
  (add-hook 'dired-load-hook 'my-dired-init))

(put 'scroll-left 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;;; Markdown mode
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))


(require 'poly-R)
(require 'poly-markdown)
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))


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

;;; Mplus mode
;;; changer le path (au besoin).
(load "C:/charles/Statistiques/Mplus_mode/mplus-mode.el")
(setq auto-mode-alist (cons '("\\.inp" . mplus-mode) auto-mode-alist))
(add-hook 'mplus-mode-hook
	  (lambda ()
	    (load "C:/Charles/Statistiques/Mplus_mode/company-mplus-mode.el")
	    (setq-local company-dabbrev-downcase nil)
	    )
	  )

(setenv "GIT_ASKPASS" "git-gui--askpass")

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-h") 'company-show-doc-buffer))

(defun then_R_operator ()
  "%>% operator or 'then' pipe operator"
  (interactive)
  (insert " %>%") ; note the space before the first %
  (reindent-then-newline-and-indent))
(global-set-key (kbd "C-;") 'then_R_operator)

(fset 'insert-r-block
      (lambda (&optional arg) "Keyboard macro."
	(interactive "p")
	(kmacro-exec-ring-item
	 (quote ([?` ?` ?` ?\{ ?r ?\} return return ?` ?` ?` up] 0 "%d"))
	 arg)))






(global-set-key (kbd "<f7>") 'replace-regexp)


;;; f1  help file. 
;;; f2  ouvrir un fichier avec l'application
;;;     par défaut dans windows.
;;; f3  start macro
;;; f4  end macro
;;; f5  check word with ispell.
;;; f6  flyspell
;;; f7  replace-regexp
;;; f8  Entete
;;; f9  Windows explorer to . 
;;; f10 Menu
;;; f11 full-screen
;;; f12 kill-buffer
(add-hook 'before-save-hook 'time-stamp)

;;; Pour ne pas désactivé certaines options.
(put 'scroll-left 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
  
;;; company(comp-any).
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq ess-use-company 'script-only)
(setq ess-use-flymake nil)

(define-key company-active-map (kbd "M-h") 'company-show-doc-buffer)
(setq company-selection-wrap-around t
      company-tooltip-align-annotations t
      company-idle-delay 1
      company-minimum-prefix-length 2
      company-tooltip-limit 10)

;;; Mplus-mode.

(add-to-list 'auto-mode-alist '("\\.inp" . mplus-mode))
(add-hook 'mplus-mode-hook
	  (lambda ()
	    (load "C:/charles/Statistiques/Mplus_mode/mplus-mode.el")
	    (load "c:/charles/Statistiques/Mplus_mode/company-mplus-mode.el")
	    (setq company-dabbrev-downcase nil)
		  )	  
	  )
	  
(defun my-dired-init ()
  "Bunch of stuff to run for dired, either immediately or when it's
   loaded."
  ;; <add other stuff here>
  (define-key dired-mode-map [return] 'dired-single-buffer)
  (define-key dired-mode-map [mouse-1] 'dired-single-buffer-mouse)
  (define-key dired-mode-map "^"
    (function
     (lambda nil (interactive) (dired-single-buffer "..")))))

;; if dired's already loaded, then the keymap will be bound
(if (boundp 'dired-mode-map)
    ;; we're good to go; just add our bindings
    (my-dired-init)
  ;; it's not loaded yet, so add our bindings to the load-hook
  (add-hook 'dired-load-hook 'my-dired-init))


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
           (w32-shell-execute "open"
			      (replace-regexp-in-string "/" "\\" fPath t t))) -file-list))
       ((string-equal system-type "darwin")
        (mapc
         (lambda (fPath) (shell-command (format "open \"%s\"" fPath)))  -file-list))
       ((string-equal system-type "gnu/linux")
        (mapc
         (lambda (fPath) (let ((process-connection-type nil))
			   (start-process "" nil "xdg-open" fPath))) -file-list))))))

(global-set-key (kbd "<f2>") 'xah-open-in-external-app) 

;;; elpy
(add-hook 'python-mode-hook
	  (lambda ()
	    (elpy-enable)
	    )	  
	  )

;;; (setq elpy-rpc-python-command "python3")



;;; Markdown mode
(defun rmd-mode ()
  "ESS Markdown mode for rmd files"
  (interactive)
  (setq load-path 
	(append (list "~/.emacs.d/elpa/polymode/"
		      "~/.emacs.d/elpa/polymode/modes/")
        load-path))
  (require 'poly-R)
  (require 'poly-markdown)     
  (poly-markdown+r-mode))

(add-to-list 'auto-mode-alist '("\\.Rmd" . rmd-mode))


(fset 'insert-r-block
      (lambda (&optional arg) "Keyboard macro."
	(interactive "p")
	(kmacro-exec-ring-item
	 (quote ([?` ?` ?` ?\{ ?r ?\} return return ?` ?` ?` up] 0 "%d"))
	 arg)))
(global-set-key (kbd "<f6>") 'insert-r-block)

(fset 'insert-r-markdown
      (lambda (&optional arg) "Keyboard macro."
	(interactive "p")
	(insert-file "c:/charles/Statistiques/Rmarkdown/template.Rmd")
	)
      )
(global-set-key (kbd "C-<f6>") 'insert-r-markdown)


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
(setenv "GIT_ASKPASS" "git-gui--askpass")
 
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


(add-hook 'Latex-mode-hook 'turn-on-auto-fill)

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



(setq dired-listing-switches "-alh")

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


(defun my-bash-on-windows-shell ()
  (let ((explicit-shell-file-name "C:/Windows/System32/bash.exe"))
    (shell)))



(add-to-list 'load-path
             "~/.emacs.d/snippets/")
(require 'yasnippet)
(yas-global-mode 1)

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

(require 'ess-r-insert-obj)
(global-set-key (kbd "C-<tab>") 'ess-r-insert-obj-col-name)
(global-set-key (kbd "C-c C-<tab>") 'ess-r-insert-obj-dt-name)


(setq user-full-name "Charles-Édouard Giguère")
(setq user-mail-address "ce.giguere@gmail.com")
(setq smtpmail-default-smtp-server "smtp.office365.com")

;(setq explicit-shell-file-name "C:\Program Files\Git\git-bash.exe")

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-language-environment 'utf-8)
(set-selection-coding-system 'utf-8)
