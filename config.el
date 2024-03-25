;; (map! :desc "7030"
;;       :leader
;;       "w w" #'window-resize-to-70-percent)
(map! :desc "Boomarks"
      :leader
      "<RET>" #'bookmark-bmenu-list)
(map! :desc "Some org things"
      :leader
      "d d" #'orgdate)
(map! :desc "Save file fast and quit"
      :leader
      :o
      "s s" #'save-buffer
      "q q" #'delete-window)
(map! :desc "Grep in currentDir"
      :leader
      "g d" #'ackincurrentdir)
(map! :desc "Grep in project"
      :leader
      "g g" #'helm-projectile-ack
      "g a" #'grepall)
(map! :desc "Files in currentDir"
      :leader
      "f d" #'helm-find-files)
(map! :desc "Files in project"
      :leader
      "f f" #'helm-projectile-find-file
      "f a" #'findall
      "f s" #'findsys)
(map! :desc "company"
      "C-S-n" #'company-complete)
(map! :desc "Window Vsplit"
      :leader
      "w /" #'evil-window-vsplit)
(map! :desc "Window split"
      :leader
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
      "C-M-G" #'ackincurrentdir
      )
(map! :desc "dim"
      :map global-map
      "C-S-d" #'auto-dim-other-buffers-mode
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
(map! :desc "Git blame"
      :leader
      "g b" #'magit-blame-addition)
(map! :desc "Git link"
      :leader
      "g l" #'git-link
      "g L" #'git-link-commit)
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
(map! :desc "Kubernetes"
      :leader
      "k p" #'kubernetes-display-pod
      "k i" #'kubernetes-display-ingress
      "k s" #'kubernetes-display-service)

(map! :leader
      "b x" #'doom/switch-to-scratch-buffer)

(use-package dired
  :ensure nil
  :commands (dired dired-jump)
  :bind (("C-x C-j" . dired-jump))
  :custom ((dired-listing-switches "-la"))
  :config
  (evil-collection-define-key 'normal 'dired-mode-map
    "h" 'dired-up-directory
    "n" 'find-file
    "l" 'dired-find-file ))

(setq doom-font (font-spec :family "UbuntuMono Nerd Font Mono" :size 11.5 :weight 'normal)
      doom-big-font (font-spec :family "UbuntuMono Nerd Font Mono" :size 24))
(setq doom-theme 'doom-tokyo-night)
;; (beacon-mode 1)
;; (setq beacon-color "#50fa7b")
;; (treemacs-icons-dired-mode 1)
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

(evil-define-key 'dired dired-mode-map (kbd "h") 'dired-up-directory)
;; (evil-define-key 'treemacs treemacs-mode-map (kbd "C-f") 'swiper)
;; (evil-define-key 'treemacs treemacs-mode-map (kbd "C-s") 'magit-status)
;; (evil-define-key 'treemacs treemacs-mode-map (kbd "C-b") 'magit-branch)
;; (evil-define-key 'treemacs treemacs-mode-map (kbd "C-S-p") 'magit-pull)
;; (evil-define-key 'treemacs treemacs-mode-map (kbd "C-S-v") 'vterm-toggle)
;; (evil-define-key 'treemacs treemacs-mode-map (kbd "C-S-g") 'ignore)
;; (evil-define-key 'treemacs treemacs-mode-map (kbd "C-e") 'helm-buffers-list)
;; (evil-define-key 'treemacs treemacs-mode-map (kbd "<escape>") 'ignore)



(define-key evil-normal-state-map (kbd "C-S-t") 'terraform-format-buffer )
(define-key evil-normal-state-map (kbd "C-S-c") 'comment-line)
(define-key evil-normal-state-map (kbd "C-e") 'helm-buffers-list)
(define-key evil-normal-state-map (kbd "C-f") 'swiper)
(define-key evil-normal-state-map (kbd "C-S-f") 'fzf-find-file)
(define-key evil-normal-state-map (kbd "C-M-f") 'findfileincurrentdir)
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
(define-key evil-normal-state-map (kbd "x") 'delete-char)
(define-key evil-normal-state-map (kbd "D") 'delete-region)
;; (define-key evil-normal-state-map (kbd "d") 'evil-delete-without-register)

(evil-define-operator evil-delete-without-register (beg end type yank-handler)
  (interactive "<R><y>")
  (evil-delete beg end type ?\_ yank-handler))

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
(setenv "GOPATH" "/home/jgarcia/go")
(setenv "GO111MODULE" "on")
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

(defun saveFaster()
  (interactive)
  (if (equal major-mode "magit")
      (with-editor-finish)

    (save-buffer)
    )
  (print "saveFaster done..")
  (print major-mode)
  )

(defun findfileincurrentdir()
  (interactive)
  (fzf-find-file default-directory)
  )
(defun findfileincurrentdir()
  (interactive)
  (fzf-find-file default-directory)
  )
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
(setq helm-projectile-fuzzy-match nil)

(setq doom-modeline-vcs-max-length 60)
;; (auto-dim-other-buffers-mode)
(setq recentf-max-saved-items 400)
(defun orgdate()
  (interactive)
  (org-insert-heading)
(org-insert-time-stamp (current-time))
  (end-of-line)
  (newline-and-indent)
  (insert  "- ")
  (evil-insert nil)
)
;; (setq display-line-numbers-type nil)
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
(defun window-resize-to-70-percent ()
  (interactive)
  (window-resize nil (- (truncate (* 0.6 (frame-width))) (window-width)) t))
(defun grepall ()
  (interactive)
  (setq helm-rg--current-dir "/home/jgarcia/Projects/disney")
  (helm-rg())
  )
(defun findsys ()
    (interactive)
  (find-file (helm :sources (helm-build-sync-source "FindAll in ~/.config/"
                 :candidates (split-string (shell-command-to-string "find ~/.config/") "\n")
                 :fuzzy-match nil)
      :buffer "*helm test*")))
(defun findall ()
    (interactive)
  (find-file (helm :sources (helm-build-sync-source "FindAll in ~/Projects/disney"
                 :candidates (split-string (shell-command-to-string "find ~/Projects/disney/ -not -path '*/.*'") "\n")
                 :fuzzy-match nil)
      :buffer "*helm test*")))
;; This is supposed to make the cursor a bit faster ...i can't tell to be fair
(setq doom-modeline-enable-word-count nil)
(setq auto-window-vscroll nil)
(setq display-line-numbers-type 'relative)
(after! projectile
;; I don't know wether this is doing something at all ,   <space> f f seems to respect .gitignore ,  so probs that's a good practice , but it would be a pain
(setq projectile-generic-command
  "find . -type f ! -ipath '*.git*' ! -ipath '*/.git*' -print0")
)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-startup-folded t)
(epa-file-enable)
;; (golden-ratio-mode 1)
(setenv "JAVA_HOME" "/home/jgarcia/.jabba/jdk/openjdk@19.0.2")
;; (setq golden-ratio-extra-commands '(evil-window-left evil-window-right evil-window-down evil-window-up magit-show-commit))
(setq lsp-java-maven-download-sources nil)
(setq lsp-java-eclipse-download-sources t)
(setq lsp-java-import-gradle-enabled t)
(setq lsp-java-import-maven-enabled t)
(setq lsp-java-import-gradle-java-home "/home/jgarcia/.jabba/jdk/openjdk@11.0.15")
(setq lsp-java-import-gradle-offline-enabled t)
(setq lsp-java-import-maven-offline-enabled t)
(setq lsp-java-configuration-runtimes '[(:name "JavaSE-19" :paht "/home/jgarcia/.jabba/jdk/openjdk@19.0.2")(:name "JavaSE-1.8" :path "/home/jgarcia/.jabba/jdk/openjdk@11.0.15")(:name "JavaSE-11" :path "/home/jgarcia/.jabba/jdk/openjdk@11.0.15":default t)])
(setq org-confirm-babel-evaluate t)
(setq tree-sitter-mode t)
(setq tree-sitter-hl-mode t)

