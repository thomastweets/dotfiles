; auto-complete mode extra settings
(require 'auto-complete)
(setq
 ac-auto-start 0
 ac-override-local-map nil
 ac-use-menu-map t
 ac-candidate-limit 20)

(global-auto-complete-mode t)

(provide 'tce-autocomplete)
