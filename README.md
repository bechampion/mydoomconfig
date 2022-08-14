# My doom config

This is my current doom as of "today".
I'm not using LSP , im just surviving with basic company completion
I use some custom keybindings that i inherited from vim and stuff ,  but nothing too special.

## Darkokai
I'm trying to use darkokai with some fixes the fonts seem to be a bit large on org-mode.
Also on selection (visual mode) by default it doesn't preserve the highlighting , so i fixed all of it with:

``` emacs-lisp
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-date-today ((t (:background "#242728" :foreground "#06d8ff" :inverse-video t :box nil :overline t :weight light :height 0.8 :width normal))))
 '(org-date ((t (:inherit default :foreground "#06d8ff"))))
 '(org-level-1 ((t (:inherit variable-pitch :extend t :foreground "#ffac4a" :weight normal :height 1.0))))
 '(org-level-2 ((t (:inherit variable-pitch :extend t :foreground "#63de5d" :height 1.0))))
 '(org-level-3 ((t (:inherit variable-pitch :extend t :foreground "#06d8ff" :height 1.0))))
 '(org-level-4 ((t (:inherit variable-pitch :extend t :foreground "#E6DB74" :height 1.0))))
 '(region ((t (:inherit nil :extend t :background "gray30")))))
(put 'customize-group 'disabled nil)
(put 'customize-face 'disabled nil)
```

