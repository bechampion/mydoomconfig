(map! :desc "company"
      "C-S-n" #'company-complete)
(map! :desc "Win action"
      :leader
      "w /" #'evil-window-vsplit
      "w -" #'evil-window-split)
(map! :desc "Magit "
      "C-s" #'magit-status
      "C-b" #'magit-branch
      "C-S-b" #'revert-buffer)
(map! :leader
      :desc "Git Grep"
      "g /" #'helm-projectile-ack)
(map! :leader
      :desc "dired jump"
      "f j" #'dired-jump)
(map! :leader
      :desc "Helm Mx"
      "<SPC>" #'helm-M-x)
(map! :desc "Unbind CF"
      :map evil-motion-state-map
      "C-f" nil)
(map! :desc "Unbind CSt"
      :map evil-normal-state-map
      "C-t" nil)
(map! :desc "Swiper"
      :map global-map
      "C-f" #'swiper
      "C-S-G" #'helm-projectile-ack
      "C-S-D" #'ackincurrentdir
      )
(map! :desc "CompanyComplete"
      :map global-map
      "C-S-n" #'company-complete)
(map! :desc "Swiper escape"
      :map swiper-map
      "<escape>" #'exit-minibuffer)
(map! :desc "next-window"
      :map evil-window-map
      "C-w" #'evil-window-next)
(map! :desc "swiper next"
      :map swiper-map
      "C-j" #'ivy-next-line
      "C-k" #'ivy-previous-line)
(map! :desc "magit blame"
      :leader
      "g b" #'magit-blame-addition
      "g l L" #'git-link
      "g l" #'git-link)
(map! :desc "Visual select word"
      :leader
      "v" #'er/expand-region)
(map! :desc "Treemacs"
      :leader
      "t s" #'treemacs-switch-workspace
      "t e" #'treemacs-edit-workspaces
      "t p" #'treemacs-projectile)

(map! :desc "Recent FZF"
      :leader
      "f r" #'helm-recentf)



(use-package dired
:ensure nil
:commands (dired dired-jump)
:bind (("C-x C-j" . dired-jump))
:custom ((dired-listing-switches ""))
:config
(evil-collection-define-key 'normal 'dired-mode-map
        "h" 'dired-up-directory
        "n" 'find-file
        "l" 'dired-find-file ))


(setq doom-font (font-spec :family "UbuntuMono Nerd Font Mono" :size 13.5 :weight 'normal)
      doom-big-font (font-spec :family "UbuntuMono Nerd Font Mono" :size 24))
(setq doom-theme 'doom-one)
(beacon-mode 1)
(setq beacon-color "#ff9da4")
(treemacs-icons-dired-mode 1)
(setq projectile-switch-project-action #'projectile-find-file-dwim)
(setq doom-themes-treemacs-enable-variable-pitch nil)
(flycheck-mode 0)
(setq window-divider-default-right-width 0)
(setq window-divider-default-bottom-width 0)
(setq window-divider-default-places t)
(setq magit-revision-show-gravatars t)
(setq git-link-open-in-browser t)
(window-divider-mode 1)
(helm-adaptive-mode 1)
;; (company-mode 1)


(evil-define-key 'treemacs treemacs-mode-map (kbd "C-f") 'swiper)
(evil-define-key 'treemacs treemacs-mode-map (kbd "C-s") 'magit-status)
(evil-define-key 'treemacs treemacs-mode-map (kbd "C-b") 'magit-branch)
(evil-define-key 'treemacs treemacs-mode-map (kbd "C-S-p") 'magit-pull)
(evil-define-key 'treemacs treemacs-mode-map (kbd "C-S-v") 'vterm-toggle)
(evil-define-key 'treemacs treemacs-mode-map (kbd "C-S-g") 'ignore)
(evil-define-key 'treemacs treemacs-mode-map (kbd "C-e") 'helm-buffers-list)
(evil-define-key 'treemacs treemacs-mode-map (kbd "<escape>") 'ignore)



(define-key evil-normal-state-map (kbd "C-S-t") 'terraform-format-buffer )
(define-key evil-normal-state-map (kbd "C-S-c") 'comment-line)
(define-key evil-normal-state-map (kbd "C-e") 'helm-buffers-list)
(define-key evil-normal-state-map (kbd "C-f") 'swiper)
(define-key evil-normal-state-map (kbd "C-S-f") 'fzf-find-file)
(define-key evil-normal-state-map (kbd "C-S-v") 'vterm-toggle)
(define-key evil-normal-state-map (kbd "C-l") 'magit-log)
(define-key evil-normal-state-map (kbd "C-s") 'magit-status)
(define-key evil-normal-state-map (kbd "C-b") 'magit-branch)
(define-key evil-normal-state-map (kbd "C-S-b") 'revert-buffer)
(define-key evil-normal-state-map (kbd "C-S-n") 'company-complete)
(define-key evil-normal-state-map (kbd "C-S-l") 'magit-log-head)
(define-key evil-normal-state-map (kbd "C-S-p") 'magit-pull)
(define-key evil-visual-state-map (kbd "H") 'ignore)
(define-key evil-visual-state-map (kbd "L") 'ignore)
(define-key evil-visual-state-map (kbd "J") 'ignore)
(define-key evil-visual-state-map (kbd "K") 'ignore)
(define-key evil-normal-state-map (kbd "H") 'ignore)
;; (define-key evil-normal-state-map (kbd "J") 'ignore)
(define-key evil-normal-state-map (kbd "K") 'ignore)
(define-key evil-normal-state-map (kbd "L") 'ignore)
(define-key evil-normal-state-map (kbd "C-h") 'ignore)
(define-key evil-normal-state-map (kbd "C-j") 'ignore)
(define-key evil-normal-state-map (kbd "C-k") 'ignore)

(setq which-key-idle-delay 0.7)
(setq which-key-idle-secondary-delay 0.7)

(define-key evil-normal-state-map (kbd "H") 'evil-window-top)
(define-key evil-normal-state-map (kbd "L") 'evil-window-bottom)
(define-key evil-normal-state-map (kbd "<left>") 'ignore)
(define-key evil-visual-state-map (kbd "<left>") 'ignore)
(define-key evil-normal-state-map (kbd "<right>") 'ignore)
(define-key evil-visual-state-map (kbd "<right>") 'ignore)
(define-key evil-normal-state-map (kbd "<down>") 'ignore)
(define-key evil-visual-state-map (kbd "<down>") 'ignore)
(define-key evil-normal-state-map (kbd "<up>") 'ignore)
(define-key evil-visual-state-map (kbd "<up>") 'ignore)
(setenv "GOPATH" "/home/jgarcia/Projects/go")
(setq fzf/args "-x --print-query --margin=1,0 --color --bind esc:abort"
        fzf/executable "fzf"
        fzf/git-grep-args "-i --line-number %s"
        ;; command used for `fzf-grep-*` functions
        ;; example usage for ripgrep:
        ;;fzf/grep-command "rg --no-heading -nH"
        fzf/grep-command "grep -nrH"
        ;; If nil, the fzf buffer will appear at the top of the window
        fzf/position-bottom 1
        fzf/window-height 20)
;This is to preserve highlighting on visual mode
;You need to do tis in Customize-face seems not to work
;;(set-face-attribute 'region nil :inherit nil :background "gray30")
(setq lsp-headerline-breadcrumb-enable t)
(setq lsp-headerline-breadcrumb-segments '(project file symbols))
(setq lsp-headerline-breadcrumb-icons-enable t)
(setq display-line-numbers-type 'relative)
(setq treemacs-show-cursor t)
(setq treemacs-follow-mode t)
; This is to ignore dired on helm-recent buffers
(defun my-filter-dired-buffers (buffer-list)
  (delq nil (mapcar
             (lambda (buffer)
               (if (eq (with-current-buffer buffer major-mode)  'dired-mode)
                   nil
                 buffer))
             buffer-list)))

(advice-add 'helm-skip-boring-buffers :filter-return 'my-filter-dired-buffers)
; Speeds up swiper
(setq swiper-use-visual-line nil)
(setq swiper-use-visual-line-p (lambda (a) nil))


; My cloning function that also add the project into your current treemacs workpace
(defun mywindowaction ()
  (interactive)
  (if (= (length (window-list)) 1)
    (winner-undo)
    (doom/window-maximize-buffer))
)
(map! :nv "` f" #'mywindowaction)
(map! :nv "` h" #'evil-window-left)
(map! :nv "` l" #'evil-window-right)
(map! :nv "` k" #'evil-window-up)
(map! :nv "` j" #'evil-window-down)
(map! :nv "` \"" #'evil-window-split)
(map! :nv "` %" #'evil-window-vsplit)


(defun ackincurrentdir()
(interactive)
(helm-projectile-ack default-directory)
)
(defun myclone ()
(interactive)
(setq repo (read-from-minibuffer "repo?"))
(setq mydir (read-directory-name "Where to clone?:"))
(make-directory mydir)
(setq magit-clone-set-remote.pushDefault t)
(magit-clone-regular repo mydir nil)
(treemacs-add-project-to-workspace mydir))
(define-key special-event-map [config-changed-event] 'ignore)
(doom/set-frame-opacity 100)
;; (auto-dim-other-buffers-mode)
