;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "AIML"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("graphicx" "") ("longtable" "") ("wrapfig" "") ("rotating" "") ("ulem" "normalem") ("amsmath" "") ("amssymb" "") ("capt-of" "") ("hyperref" "")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "inputenc"
    "fontenc"
    "graphicx"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "amssymb"
    "capt-of"
    "hyperref")
   (LaTeX-add-labels
    "sec:org3c42aef"
    "sec:orgb1e4785"
    "sec:org9adb0f9"
    "sec:org88fe923"
    "sec:org0e09d0c"
    "sec:org1074cae"
    "sec:orgf0fc74a"
    "sec:orge3cdb73"
    "sec:org3d222ff"
    "sec:org379bd2f"
    "sec:orgdfd9116"
    "sec:org21ead2d"
    "sec:orgdb3291e"
    "sec:org4ac245d"
    "sec:org0474dd5"
    "sec:org9fcd046"
    "sec:org5aaf8bf"
    "sec:org8da8abe"
    "sec:org9890fbd"))
 :latex)

