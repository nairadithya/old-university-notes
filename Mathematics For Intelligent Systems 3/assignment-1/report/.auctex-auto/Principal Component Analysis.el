;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "Principal Component Analysis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("IEEEtran" "conference")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("listings" "") ("cite" "") ("amsmath" "") ("amssymb" "") ("amsfonts" "") ("algorithmic" "") ("graphicx" "") ("textcomp" "") ("xcolor" "")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "latex2e"
    "IEEEtran"
    "IEEEtran10"
    "listings"
    "cite"
    "amsmath"
    "amssymb"
    "amsfonts"
    "algorithmic"
    "graphicx"
    "textcomp"
    "xcolor")
   (TeX-add-symbols
    "BibTeX")
   (LaTeX-add-labels
    "fig:enter-label")
   (LaTeX-add-bibitems
    "b1"
    "b2"
    "b3"
    "b4"))
 :latex)

