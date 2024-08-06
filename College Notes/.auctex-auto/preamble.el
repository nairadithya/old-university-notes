;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "preamble"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("xcolor" "dvipsnames" "pdftex") ("import" "") ("geometry" "tmargin=2cm" "rmargin=0.5in" "lmargin=0.5in" "margin=0.85in" "bmargin=2cm" "footskip=.2in") ("cantarell" "") ("hyperref" "") ("graphicx" "") ("float" "") ("multicol" "") ("amsmath" "") ("amsfonts" "") ("mathtools" "") ("amsthm" "") ("amssymb" "") ("cancel" "") ("caption" "") ("pdfpages" "") ("algorithm2e" "ruled" "vlined" "linesnumbered") ("tikzsymbols" "") ("fncychap" "Lenny") ("mdframed" "framemethod=TikZ") ("tikz" "") ("tikz-cd" "") ("siunitx" "") ("fancyhdr" "") ("listings" "") ("varwidth" "") ("thmtools" "") ("tcolorbox" "most" "many" "breakable")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "xcolor"
    "import"
    "geometry"
    "cantarell"
    "hyperref"
    "graphicx"
    "float"
    "multicol"
    "amsmath"
    "amsfonts"
    "mathtools"
    "amsthm"
    "amssymb"
    "cancel"
    "caption"
    "pdfpages"
    "algorithm2e"
    "tikzsymbols"
    "fncychap"
    "mdframed"
    "tikz"
    "tikz-cd"
    "siunitx"
    "fancyhdr"
    "listings"
    "varwidth"
    "thmtools"
    "tcolorbox")
   (TeX-add-symbols
    '("createnewcoloredtheoremstyle" 4)
    '("createnewtheoremstyle" 3)
    '("incfig" 1)
    "implies"
    "impliedby"
    "iff"
    "epsilon")
   (LaTeX-add-environments
    '("solution" LaTeX-env-args ["Text"] ["Text"])
    '("question" LaTeX-env-args ["Text"] ["Text"])
    '("definition" LaTeX-env-args ["Text"] ["Text"])
    '("explanation" LaTeX-env-args ["argument"] 0)
    '("proof" LaTeX-env-args ["argument"] 0))
   (LaTeX-add-xcolor-definecolors
    "myblue"
    "mygreen"
    "myred"
    "mypurple"
    "definition"
    "theorem"
    "example"
    "prop"
    "lemma"
    "exercise"
    "claim"
    "corollary"
    "proof")
   (LaTeX-add-amsthm-newtheorems
    "notation"
    "previouslyseen"
    "problem"
    "observe"
    "property"
    "intuition")
   (LaTeX-add-listings-lstdefinestyles
    "myStyle")
   (LaTeX-add-thmtools-declaretheoremstyles
    "#1")
   (LaTeX-add-thmtools-declaretheorems
    "theorem"
    "example"
    "claim"
    "corollary"
    "prop"
    "lemma"
    "exercise"
    "replacementproof"
    "expl")
   (LaTeX-add-tcolorbox-newtcolorboxes
    '("note" "1" "[" "")
    '("Solution" "" "" ""))
   (LaTeX-add-tcolorbox-tcbuselibraries
    "theorems,skins,hooks"))
 :latex)

