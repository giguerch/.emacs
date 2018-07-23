;;; Time-stamp: <2018-07-22 21:53:55 Charles-Edouard>
;;; Mon .emacs
;;; Charles-Édouard Giguère

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;; Dépôt melpa pour télécharger les packages emacs. 
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/")
	     t)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/")
	     t)

(load "C:/Users/Charles-Edouard/.emacs.d/CEG-emacs-theme/PURPLE_RAIN-theme.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("ff8c6c2eb94e776c9eed9299a49e07e70e1b6a6f926dec429b99cf5d1ddca62a" "0e8c264f24f11501d3f0cabcd05e5f9811213f07149e4904ed751ffdcdc44739" "880f541eabc8c272d88e6a1d8917fe743552f17cedd8f138fe85987ee036ad08" "5f4dfda04fbf7fd55228266c8aab73953d3087cea7fd06dd7f8ff1e4a497c739" "2ae4b0c50dd49a5f74edeae3e49965bf8853954b63c5712a7967ea0a008ecd5b" "3fe4861111710e42230627f38ebb8f966391eadefb8b809f4bfb8340a4e85529" "9bd5ee2b24759fbc97f86c2783d1bf8f883eb1c0dd2cf7bda2b539cd28abf6a9" "0c5204945ca5cdf119390fe7f0b375e8d921e92076b416f6615bbe1bd5d80c88" "39a854967792547c704cbff8ad4f97429f77dfcf7b3b4d2a62679ecd34b608da" "2d5c40e709543f156d3dee750cd9ac580a20a371f1b1e1e3ecbef2b895cf0cd2" "392f19e7788de27faf128a6f56325123c47205f477da227baf6a6a918f73b5dc" "7bd626fcc9fbfb44186cf3f08b8055d5a15e748d5338e47f9391d459586e20db" "be5b03913a1aaa3709d731e1fcfd4f162db6ca512df9196c8d4693538fa50b86" default)))
 '(ess-default-style (quote RStudio))
 '(ess-eval-visibly (quote nowait))
 '(ess-history-file nil)
 '(ess-r-args-electric-paren t)
 '(ess-swv-processor (quote knitr))
 '(inferior-R-args "--no-save --no-restore --no-init-file --no-environ")
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(package-selected-packages
   (quote
    (color-theme-modern magit elpy polymode markdown-mode dired-single ess company)))
 '(python-shell-completion-native-disabled-interpreters (quote ("pypy" "ipython" "python")))
 '(python-shell-interpreter "ipython")
 '(safe-local-variable-values (quote ((Encoding . utf-8)))))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))


(add-hook 'after-init-hook 'global-company-mode)

;;; Mettre mon home comme répertoire par défaut.
(setq default-directory "C:/Users/Charles-Edouard")

;;; Mettre F12 comme clé pour fermer une fenêtre.
(fset 'kill-current-buffer
      (lambda () (interactive) (kill-buffer (current-buffer))))

(global-set-key (kbd "<f12>") 'kill-current-buffer)

;;; Mettre F9 pour démarrer une fenêtre d'exploration.
(global-set-key (kbd "<f9>")
		(lambda () (interactive) (shell-command "start \"\" \".\"")))

;;; Pour que la date s'affiche automatiquement.
(add-hook 'before-save-hook 'time-stamp)

(load "ess-site")
(setq ess-use-company 'script-only)


(setq company-selection-wrap-around t
      company-tooltip-align-annotations t
      company-idle-delay 0.36
      company-minimum-prefix-length 2
      company-tooltip-limit 10)


;;; Entête Standard pour R. 
(fset 'entete
      (lambda (&optional arg) "Keyboard macro."
	(interactive "p")
	(kmacro-exec-ring-item
	 (quote ([35 35 35 32 32 32 32 32
		     kp-subtract kp-multiply
		     kp-subtract 32 67 111 100
		     105 110 103 58
		     33554464 117 116 102 kp-subtract
		     kp-8 32 kp-subtract kp-multiply
		     kp-subtract 32 32 32 32 32 32 32
		     32 32 32 35 35 35
		     return 35 35 35 32 65 110 97 108
		     121 115 116 101 32
		     67 104 97 114 108 101 115 45 201
		     100 111 117 97 114 100 32 71 105
		     103 117 232 114 101 32 32 32 35 35 35 return return
		     ?r ?e ?q ?u ?i ?r ?e ?\( ?d ?p ?l ?y ?r ?,
		     ? ?q ?u ?i ?e ?t ?l ?y ?  ?= ?  ?T ?R ?U ?E ?,
		     ?  ?w ?a ?r ?n ?. ?c ?o ?n ?f ?l ?i ?c ?t ?s ?  ?= ?  ?F ?A ?L ?S ?E ?\) return
		     ?r ?e ?q ?u ?i ?r ?e ?\( ?g ?g ?p ?l ?o ?t ?2 ?, ? 
		     ?q ?u ?i ?e ?t ?l ?y ?  ?= ?  ?T ?R ?U ?E ?, ? 
		     ?w ?a ?r ?n ?. ?c ?o ?n ?f ?l ?i ?c ?t ?s ?  ?= ?  ?F ?A ?L ?S ?E ?\) return
		     ?r ?e ?q ?u ?i ?r ?e ?\( ?C ?U ?F ?F ?, ? 
		     ?q ?u ?i ?e ?t ?l ?y ?  ?= ?  ?T ?R ?U ?E ?, ? 
		     ?w ?a ?r ?n ?. ?c ?o ?n ?f ?l ?i ?c ?t ?s ?  ?= ?  ?F ?A ?L ?S ?E ?\) return] 0 "%d")
		)
	 arg)))
(global-set-key (kbd "<f8>") 'entete)

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

(setq ispell-program-name "aspell")
(setq ispell-personal-dictionary "~/.ispell")
(require 'ispell)
(global-set-key (kbd "<f5>") 'ispell-word)
(global-set-key (kbd "C-<f5>") 'flyspell-mode)


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

