;;; ~/.doom.d/+bindings.el -*- lexical-binding: t; -*-

(map!

 ;; leader mappings
 (:leader
   :desc "Previous buffer"             "[" (previous-buffer)
   :desc "Next buffer"                 "]" (next-buffer)

   ;; DOOM Emacs things
   (:prefix "d"
     :desc "DOOM Restart"              "r" #'doom/restart
     :desc "DOOM Restart & Restore"    "R" #'doom/restart-and-restore)))
