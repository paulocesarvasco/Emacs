;;; init-global-keybinds.el -- Global keybinds used on every buffer
;;; Commentary:
;;; Code:

;; Toggles the relative line numbering
(global-set-key (kbd "C-c 1") 'linum-mode)

;; Replace string keystroke
(global-set-key (kbd "C-c s") 'replace-string)

;; Query replace string keystroke
(global-set-key (kbd "C-c S") 'query-replace)

;; Adjust window size keystrokes
(global-set-key (kbd "M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-<down>") 'shrink-window)
(global-set-key (kbd "M-<up>") 'enlarge-window)

;; Change window keystroke
(global-set-key (kbd "C-ç") 'other-window)

;; Compile Command
(global-set-key "\C-x\C-m" 'compile)

;; Fast visit buffers
(global-set-key (kbd "<f1>")
                (lambda()
                  (interactive)
                  (org-wiki-index)))

(global-set-key (kbd "<f10>") '
                (lambda()
                  (interactive)
                  (find-file "~/Common/PIBIC/3_org_files/Index.org")))

(global-set-key (kbd "<f11>") '
                (lambda()
                  (interactive)
                  (find-file "~/Common/SelfLearning/SelfLearning.org")))

(global-set-key (kbd "C-w") 'kill-region-or-backward-word)

;; split window and change focus
(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))

;; Kill current buffer instead of asking
(global-set-key (kbd "C-x k") 'kill-current-buffer)

(global-set-key (kbd "C-c d") 'duplicate-line)

(global-set-key (kbd "C-c c") 'insert-curly-braces)

(global-set-key (kbd "C-o") 'open-line-with-reindent)

(global-set-key (kbd "M-p") 'move-line-up)
(global-set-key (kbd "M-n") 'move-line-down)

(global-set-key (kbd "C-c p") 'insert-parenthesis)
(global-set-key (kbd "C-c n") 'insert-curl-brackets)
(global-set-key (kbd "C-c b") 'insert-brackets)
(global-set-key (kbd "C-c e") 'insert-double-quotes)
(global-set-key (kbd "C-c x") 'insert-simple-quotes)
(global-set-key (kbd "C-c ,") 'insert-tag)

(provide 'init-global-keybinds)
;;; init-global-keybinds.el ends here
