;;; init-productivity.el --- packages that help better my workflow
;;; Commentary:
;;; Code:

(use-package ivy
  :ensure t
  :diminish ivy-mode
  :init
  (ivy-mode 1)
  :config
  (setq ivy-count-format "%d/%d ")
  (setq ivy-initial-inputs-alist nil))

;; IDO-style directory navigation
(define-key ivy-minibuffer-map (kbd "RET") #'ivy-alt-done)
(dolist (k '("C-j" "C-RET"))
  (define-key ivy-minibuffer-map (kbd k) #'ivy-immediate-done))

;; Enable deleting trailing whitespace on all programming modes
(use-package ws-butler
  :ensure t
  :diminish ws-butler-mode
  :config
  (add-hook 'prog-mode-hook #'ws-butler-mode)
  )

(use-package expand-region
  :ensure t
  :bind
  ("C-q" . er/expand-region))

(use-package mark-multiple
  :ensure t
  :bind
  ("C-c q" . 'mark-next-like-this))

(use-package swiper
  :ensure t
  :bind
  ("C-s" . 'swiper))

(use-package avy
  :ensure t
  :bind
  ("M-s" . avy-goto-char-2))

(use-package multiple-cursors
  :ensure t
  :bind
  ("C-c m" . mc/mark-all-like-this))

(use-package google-translate
  :ensure t
  :bind
  ("C-c g" . 'google-translate-at-point)
  ("C-c G" . 'google-translate-query-translate))

(use-package golden-ratio-scroll-screen
  :ensure t)

(global-set-key [remap scroll-down-command] 'golden-ratio-scroll-screen-down)
(global-set-key [remap scroll-up-command] 'golden-ratio-scroll-screen-up)


(provide 'init-productivity)
;;; init-productivity.el ends here