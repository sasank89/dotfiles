(setq user-full-name "Sasank Kalipatnapu"
      user-mail-address "ksasank@gmail.com")

(setq doom-font (font-spec :family "monospace" :size 18 :weight 'semi-light)
       doom-variable-pitch-font (font-spec :family "sans" :size 19))

(setq doom-theme 'doom-one)
;;(setq doom-theme 'doom-solarized-dark)
;;(setq doom-theme 'doom-dracula)
;;(setq doom-theme 'doom-solarized-light)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Dropbox/Notes/")

;; Sets the default org-capture file. Should be interpreted relative to org-directory
(setq org-default-notes-file "inbox.org")

;; Setting org-roam directory
(setq org-roam-directory "~/Dropbox/Notes/literature/")
(setq org-roam-index-file "index.org")

;; setting custom keybindings
(after! org-roam
        (map! :leader
            :prefix "n"
            :desc "org-roam" "l" #'org-roam
            :desc "org-roam-insert" "i" #'org-roam-insert
            :desc "org-roam-switch-to-buffer" "b" #'org-roam-switch-to-buffer
            :desc "org-roam-find-file" "f" #'org-roam-find-file
            :desc "org-roam-show-graph" "g" #'org-roam-show-graph
            :desc "org-roam-insert" "i" #'org-roam-insert
            :desc "org-roam-capture" "c" #'org-roam-capture))

;; setting up org-journal to get daily note function as Roam Research
(use-package org-journal
      :bind
      ("C-c n j" . org-journal-new-entry)
      :custom
      (org-journal-dir "~/Dropbox/Notes/literature/")
      (org-journal-date-prefix "#+TITLE: ")
      (org-journal-file-format "%Y-%m-%d.org")
      (org-journal-date-format "%A, %d %B %Y"))
    (setq org-journal-enable-agenda-integration t)

;; Using deft to navigate and search through files
(use-package deft
      :after org
      :bind
      ("C-c n d" . deft)
      :custom
      (deft-recursive t)
      (deft-use-filter-string-for-filename t)
      (deft-default-extension "org")
      (deft-directory "~/Dropbox/Notes/"))

(setq reftex-default-bibliography '("~/Dropbox/Notes/references.bib"))

(setq org-ref-bibliography-notes "~/Dropbox/Notes/references.org"
      org-ref-default-bibliography '("~/Dropbox/Notes/references.bib")
      org-ref-pdf-directory "~/Dropbox/Notes/bibtex-pdfs/")

(setq bibtex-completion-bibliography "~/Dropbox/Notes/references.bib"
      bibtex-completion-library-path "~/Dropbox/Notes/bibtex-pdfs"
      bibtex-completion-notes-path "~/Dropbox/Notes/references.org")

(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
 '(python . t)
 '(latex . t)
 '(gnuplot . t)
 '(shell . t)))

;; manage citations
;;(require 'org-bibtex)

;; export citations
(require 'ox-bibtex)                    ;; this is in contrib
(setq org-bibtex-file "~/Dropbox/Notes/references.org") ;; used to resolve cite links

(setq display-line-numbers-type t)

;; For emacs to find the source of mu4e,as I built from source
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")

(setq mu4e-maildir "~/.local/share/mail"
      mu4e-get-mail-command "mbsync -a"
      ;; mu4e-update-interval 300 ;; Fetch emails every 5 minutes
      )
;; Each path is relative to `+mu4e-mu4e-mail-path', which is ~/.mail by default
(set-email-account! "ksasank-gmail"
  '((mu4e-sent-folder       . "/ksasank-gmail/Sent Mail")
    (mu4e-drafts-folder     . "/ksasank-gmail/Drafts")
    (mu4e-trash-folder      . "/ksasank-gmail/Trash")
    (mu4e-refile-folder     . "/ksasank-gmail/All Mail")
    (smtpmail-smtp-user     . "ksasank@gmail.com")
    (user-mail-address      . "ksasank@gmail.com")    ;; only needed for mu < 1.4
    (mu4e-compose-signature . "---\nSasank Kalipatnapu"))
  t)

;; To store org-mode links to messages
(require 'org-mu4e)
;;store link to message if in header view, not to header query
(setq org-mu4e-link-query-in-headers-mode nil)

;; Prevent gmail from showing duplicates in searches
(setq mu4e-headers-skip-duplicates t
      mu4e-headers-include-related t)

(setq org-noter-default-notes-file-names '("~/Dropbox/Notes/references.org"))
(setq org-noter-notes-search-path '("~/Dropbox/Notes"))

(after! org-tree-slide
  (setq org-tree-slide-skip-outline-level 1))
