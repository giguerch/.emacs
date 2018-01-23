;;; Time-stamp: <2017-10-03 23:26:50 Charles-Edouard>
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

;(add-to-list 'package-archives
;	     '("melpa" . "http://melpa.milkbox.net/packages/")
;	     t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (ceg)))
 '(custom-safe-themes
   (quote
    ("6b4f7bde1ce64ea4604819fe56ff12cda2a8c803703b677fdfdb603e8b1f8bcb" "8e7044bfad5a2e70dfc4671337a4f772ee1b41c5677b8318f17f046faa42b16b" "fc1137ae841a32f8be689e0cfa07c872df252d48426a47f70dba65f5b0f88ac4" "63aff36a40f41b28b0265ac506faa098fd552fac0a1813b745ba7c27efa5a943" "ed92c27d2d086496b232617213a4e4a28110bdc0730a9457edf74f81b782c5cf" "b8c5adfc0230bd8e8d73450c2cd4044ad7ba1d24458e37b6dec65607fc392980" "45482e7ddf47ab1f30fe05f75e5f2d2118635f5797687e88571842ff6f18b4d5" "b48599e24e6db1ea612061252e71abc2c05c05ac4b6ad532ad99ee085c7961a7" "cb39485fd94dabefc5f2b729b963cbd0bac9461000c57eae454131ed4954a8ac" "0973b33d2f15e6eaf88400eee3dc8357ad8ae83d2ca43c125339b25850773a70" "880f541eabc8c272d88e6a1d8917fe743552f17cedd8f138fe85987ee036ad08" "ec0c9d1715065a594af90e19e596e737c7b2cdaa18eb1b71baf7ef696adbefb0" "5c5de678730ceb4e05794431dd65f30ffe9f1ed6c016fa766cdf909ba03e4df4" "4bcdfc98cf64ce6145684dc8288fd87489cfa839e07f95f6c791d407624d04f8" "5eb4b22e97ddb2db9ecce7d983fa45eb8367447f151c7e1b033af27820f43760" "a455366c5cdacebd8adaa99d50e37430b0170326e7640a688e9d9ad406e2edfd" "78151250310a7b83251146e9677c8c6ed479cfb09958e6242f93770237615f2a" default)))
 '(ess-history-file nil)
 '(ess-swv-pdflatex-commands (quote ("pdflatex")))
 '(ess-swv-processor (quote knitr))
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(package-selected-packages
   (quote
    (elpy markdown-mode auctex polymode dired-single ess auto-complete color-theme-modern)))
 '(python-shell-completion-native-enable nil)
 '(safe-local-variable-values
   (quote
    ((outline-minor-mode)
     (whitespace-style face tabs spaces trailing lines space-before-tab::space newline indentation::space empty space-after-tab::space space-mark tab-mark newline-mark)))))

 
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "outline" :slant normal :weight normal :height 113 :width normal)))))
 

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
;;; load auto-complete.
(load "auto-complete")
;;; pour auto-complete dans ess.
(global-auto-complete-mode)
(setq ess-use-auto-complete t)

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



;;; Liste de raccourci de type f[0-9][0-9]
;;; ======================================
;;;   f1  aide emacs. 
;;;   f2  démarrer un fichier avec le
;;;       programme par défaut.
;;;   f3  démarrer un macro.
;;;   f4  arrêter un macro.
;;;   f5  Vérifier un mot.
;;; c-f5  fly-spell.
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

;;; Configuration pour python à ajouter plus tard. 
;;; (elpy-enable)

(put 'scroll-left 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;;; Auto-complete dans tex.
(add-hook 'tex-mode-hook
	  (lambda ()
	    (require 'auto-complete-config)
	    (ac-config-default)
	    (require 'auto-complete-auctex))
	  )

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
