;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("report" "twoside")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("svg" "")))
   (TeX-run-style-hooks
    "latex2e"
    "preamble"
    "report"
    "rep10"
    "svg"))
 :latex)

