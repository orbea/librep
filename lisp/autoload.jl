;;;; autoload.jl -- Initialise auto-load functions
;;;  Copyright (C) 1993, 1994 John Harper <john@dcs.warwick.ac.uk>
;;;  $Id$

;;; This file is part of Jade.

;;; Jade is free software; you can redistribute it and/or modify it
;;; under the terms of the GNU General Public License as published by
;;; the Free Software Foundation; either version 2, or (at your option)
;;; any later version.

;;; Jade is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.

;;; You should have received a copy of the GNU General Public License
;;; along with Jade; see the file COPYING.  If not, write to
;;; the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.

;;; ::autoload-start::
(autoload 'add-change-log-entry "add-log" t)
(autoload 'changelog-mode "add-log" t)
(autoload 'asm-mode "asm-mode" t)
(autoload 'asm-cpp-mode "asm-mode" t)
(autoload 'buffer-summary "buffer-summary" t)
(autoload 'c-mode "c-mode" t)
(autoload 'c-backslash-area "c-mode" t)
(autoload 'start-compile-command "compile")
(autoload 'compile "compile" t)
(autoload 'next-error "compile" t)
(autoload 'grep "compile" t)
(autoload 'grep-buffer "compile" t)
(autoload 'compile-file "compiler" t)
(autoload 'compile-directory "compiler" t)
(autoload 'compile-lisp-lib "compiler" t)
(autoload 'compile-function "compiler" t)
(autoload 'compile-form "compiler")
(autoload 'debug-entry "debug")
(autoload 'debug-error-entry "debug")
(autoload 'disassemble "disassembler" t)
(autoload 'add-autoloads "find-autoloads" t)
(autoload 'remove-autoloads "find-autoloads" t)
(autoload 'gdb "gdb" t)
(autoload 'help "help" t)
(autoload 'describe-mode "help" t)
(autoload 'substitute-command-keys "help")
(autoload 'documentation "help")
(autoload 'document-var "help")
(autoload 'get-documentation "help")
(autoload 'add-documentation "help")
(autoload 'info "info" t)
(autoload 'isearch-forward "isearch" t)
(autoload 'isearch-backward "isearch" t)
(autoload 'print-keymap "keymap")
(autoload 'read-event "keymap")
(autoload 'describe-key "keymap" t)
(autoload 'where-is "keymap" t)
(autoload 'substitute-key-definition "keymap" t)
(autoload 'lazy-bind-keys "keymap")
(autoload 'map-keymap "keymap")
(autoload 'latin-1-mode "latin-1" t)
(autoload 'lisp-mode "lisp-mode" t)
(autoload 'eval-sexp "lisp-mode" t)
(autoload 'eval-insert-sexp "lisp-mode" t)
(autoload 'eval-print-sexp "lisp-mode" t)
(autoload 'replace-last-match "replace")
(autoload 'replace-string "replace")
(autoload 'replace-all "replace" t)
(autoload 'query-replace "replace" t)
(autoload 'server-find-file "server")
(autoload 'server-close-file "server" t)
(autoload 'shell-mode "shell")
(autoload 'shell "shell" t)
(autoload 'shell-command "shell" t)
(autoload 'shell-command-on-buffer "shell" t)
(autoload 'shell-command-on-area "shell" t)
(autoload 'texinfo-mode "texinfo-mode" t)
(autoload 'text-mode "text-mode" t)
(autoload 'indented-text-mode "text-mode" t)
(autoload 'word-count-area "text-mode" t)
(autoload 'prompt "prompt")
(autoload 'prompt-for-file "prompt")
(autoload 'prompt-for-directory "prompt")
(autoload 'prompt-for-buffer "prompt")
(autoload 'prompt-for-symbol "prompt")
(autoload 'prompt-for-lisp "prompt")
(autoload 'prompt-for-function "prompt")
(autoload 'prompt-for-variable "prompt")
(autoload 'prompt-for-command "prompt")
(autoload 'prompt-from-list "prompt")
(autoload 'prompt-for-string "prompt")
(autoload 'prompt-for-number "prompt")
(autoload 'prompt2 "prompt")
(autoload 'yes-or-no-p "prompt")
(autoload 'y-or-n-p "prompt")
(autoload 'map-y-or-n-p "prompt")
(autoload 'read-mail "read-mail" t)
(autoload 'read-mail-folder "read-mail" t)
(autoload 'rm-summarize "rm-summary" t)
(autoload 'rm-reply "rm-misc" t)
(autoload 'rm-followup "rm-misc" t)
(autoload 'rm-output "rm-output" t)
(autoload 'rm-auto-archive-folder "rm-output" t)
(autoload 'rm-archive-folder "rm-output" t)
(autoload 'mail-yank-original "rm-misc" t)
(autoload 'rm-forward "rm-misc" t)
(autoload 'rm-burst-message "rm-misc" t)
(autoload 'rm-thread-folder "rm-thread" t)
(autoload 'rm-toggle-threading "rm-thread" t)
(autoload 'rm-sort-folder "rm-thread" t)
(autoload 'mail-setup "send-mail" t)
(autoload 'rcs-init-file "rcs")
(autoload 'rcs-register-buffer "rcs" t)
(autoload 'rcs-display-log "rcs" t)
(autoload-variable 'rcs-keymap "rcs")
(bind-keys ctrl-x-keymap "v" '(next-keymap-path '(rcs-keymap)))
(load "rcs-hooks")
(autoload 'tex-mode "tex-mode" t)
(autoload 'print-buffer "print" t)
(autoload 'print-buffer-to-file "print" t)
(autoload 'print-buffer-to-printer "print" t)
(autoload 'print-area "print" t)
(autoload 'print-area-to-file "print" t)
(autoload 'print-area-to-printer "print" t)
(autoload 'miranda "miranda" t)
(autoload 'insert-rectangle "rectangle")
(autoload 'copy-rectangle "rectangle")
(autoload 'delete-rectangle "rectangle")
(autoload 'cut-rectangle "rectangle")
(autoload 'expand-mail-aliases "sm-mail-dir" t)
(autoload 'set-fill-column "fill" t)
(autoload 'set-fill-prefix "fill" t)
(autoload 'fill-paragraph "fill" t)
(autoload 'fill-area "fill" t)
(autoload 'fill-mode "fill" t)
(autoload 'fill-mode-on "fill" t)
(autoload 'center-line "fill" t)
(autoload 'center-paragraph "fill" t)
(autoload 'set-bookmark "bookmarks" t)
(autoload 'goto-bookmark "bookmarks" t)
(autoload 'kill-bookmark "bookmarks" t)
(autoload 'kill-all-bookmarks "bookmarks" t)
(autoload 'list-bookmarks "bookmarks" t)
(autoload 'sort "sort")
(autoload 'visit-tag-table "tags" t)
(autoload 'find-tag "tags" t)
(autoload 'dired "dired" t)
(autoload 'dired-mode "dired")
(load "dired-hooks")
(autoload 'getenv "environ")
(autoload 'setenv "environ")
(autoload 'file-subst "file-subst" t)
(autoload 'map-file-subst "file-subst")
(autoload 'find-url "find-url" t)
(autoload 'pwd-prompt "pwd-prompt")
(autoload 'telnet "telnet" t)
(autoload 'rlogin "telnet" t)
(autoload 'cvs-update "cvs" t)
(autoload 'cvs-update-parent "cvs" t)
(autoload 'cvs-update-pwd "cvs" t)
(autoload 'cvs-log "cvs" t)
(autoload 'cvs-status "cvs" t)
(autoload 'cvs-add "cvs" t)
(autoload 'cvs-remove "cvs" t)
(autoload 'cvs-commit "cvs" t)
(autoload 'cvs-commit-directory "cvs" t)
(autoload 'cvs-ignore "cvs" t)
(autoload 'cvs-add-change-log-entries "cvs" t)
(autoload 'cvs-diff-cvs "cvs" t)
(autoload 'cvs-diff-backup "cvs" t)
(autoload 'cvs-undo-modification "cvs" t)
(autoload 'cvs-tag "cvs" t)
(autoload 'cvs-tag-directory "cvs" t)
(autoload 'cvs-next-conflict-marker "cvs" t)
(autoload-variable 'cvs-keymap "cvs")
(bind-keys ctrl-x-keymap "c" '(next-keymap-path '(cvs-keymap)))
(autoload 'html-style-add-style "html-style")
(autoload 'rm-filter-by-rule "rm-restrict")
(autoload 'rm-apply-rule "rm-restrict")
(autoload 'rm-apply-rules "rm-restrict")
(autoload 'rm-prompt-for-rule "rm-restrict")
(autoload 'rm-defrule "rm-restrict" t)
(autoload 'defrule "rm-restrict")
(autoload 'define-rule "rm-restrict" t)
(autoload 'sh-mode "sh-mode" t)
(setq file-handler-alist (cons '("^/(([a-zA-Z0-9._-]+)@)?([a-zA-Z0-9._-]+):" . remote-file-handler) file-handler-alist))
(autoload 'remote-file-handler "remote")
(put 'ftp 'remote-backend 'remote-ftp-handler)
(autoload 'remote-ftp-handler "remote-ftp")
(autoload 'remote-ftp-add-passwd "remote-ftp" t)
(put 'rcp 'remote-backend 'remote-rcp-handler)
(autoload 'remote-rcp-handler "remote-rcp")
(autoload 'rm-archive-folder "rm-output" t)
(autoload 'auto-compression-mode "gzip" t)
(autoload 'server-open-p "server-dl")
(autoload 'server-open "server-dl" t)
(autoload 'server-reply "server-dl" t)
(autoload 'perl-mode "perl-mode" t)
(autoload 'thesaurus-lookup-word "thesaurus" t)
(autoload 'thesaurus-show-words "thesaurus" t)
(autoload 'dict-lookup "dict" t)
(autoload 'minor-major-mode "minor-major" t)
(autoload 'yacc-mode "yacc-mode" t)
(autoload 'diff "diff" t)
(autoload 'diff-backup "diff" t)
(autoload 'diff-auto-save "diff" t)
(autoload 'diff-buffers "diff" t)
(autoload 'diff-display "diff")
(autoload 'ispell-region "ispell" t)
(autoload 'ispell-buffer "ispell" t)
(autoload 'ispell-highlight-misspellings "ispell" t)
(autoload 'ispell-minor-mode "ispell" t)
(autoload 'ispell-set-dictionary "ispell" t)
(autoload 'load-user-mail-directory "mail-dir" t)
(autoload 'load-mail-directory "mail-dir" t)
(autoload 'add-mail-address "mail-dir" t)
(autoload 'add-mail-alias "mail-dir" t)
(autoload 'remove-mail-item "mail-dir" t)
(autoload 'get-mail-address "mail-dir" t)
(autoload 'get-mail-name-from-address "mail-dir" t)
(autoload 'get-mail-alias "mail-dir" t)
(autoload 'insert-mail-item "mail-dir" t)
(autoload 'list-mail-dir "mail-dir-summary" t)
(autoload 'mime-encode-attach-file "mime-encode" t)
(autoload 'mime-encode-attach-buffer "mime-encode" t)
(autoload-variable 'mime-encode-keymap "mime-encode")
(autoload 'tex-file "tex-shell" t)
(autoload 'bibtex-file "tex-shell" t)
(autoload 'tex-print "tex-shell" t)
(autoload 'tex-view "tex-shell" t)
(autoload 'tex-show-print-queue "tex-shell" t)
;;; ::autoload-end::
