;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "preamble"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("xcolor" "dvipsnames" "pdftex") ("geometry" "tmargin=2cm" "rmargin=1in" "lmargin=1in" "margin=0.85in" "bmargin=2cm" "footskip=.2in") ("cantarell" "") ("hyperref" "") ("graphicx" "") ("float" "") ("multicol" "") ("amsmath" "") ("amsfonts" "") ("mathtools" "") ("amsthm" "") ("amssymb" "") ("cancel" "") ("caption" "") ("pdfpages" "") ("algorithm2e" "ruled" "vlined" "linesnumbered") ("tikzsymbols" "") ("bookmark" "") ("siunitx" "") ("mdframed" "framemethod=TikZ") ("tikz" "") ("tikz-cd" "") ("pgfplots" "") ("titling" "") ("eso-pic" "") ("xifthen" "") ("import" "") ("fancyhdr" "") ("xargs" "") ("todonotes" "colorinlistoftodos") ("varwidth" "") ("thmtools" "") ("tcolorbox" "most" "many" "breakable")))
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
    "intro"
    "xcolor"
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
    "bookmark"
    "siunitx"
    "mdframed"
    "tikz"
    "tikz-cd"
    "pgfplots"
    "titling"
    "eso-pic"
    "xifthen"
    "import"
    "fancyhdr"
    "xargs"
    "todonotes"
    "varwidth"
    "thmtools"
    "tcolorbox")
   (TeX-add-symbols
    '("incfig" ["argument"] 1)
    '("lesson" ["argument"] 2)
    '("createnewcoloredtheoremstyle" 4)
    '("createnewtheoremstyle" 3)
    '("correct" 2)
    '("circled" 1)
    "definegraybackground"
    "wrapfill"
    "resetcounters"
    "forcenewpage"
    "createintro"
    "listnotes"
    "class"
    "implies"
    "impliedby"
    "iff"
    "epsilon"
    "svgwidth")
   (LaTeX-add-environments
    "multicolmulticols"
    '("solution" LaTeX-env-args ["Text"] ["Text"])
    '("question" LaTeX-env-args ["Text"] ["Text"])
    '("definition" LaTeX-env-args ["Text"] ["Text"])
    '("multicols" LaTeX-env-args "Text" ["Text"])
    '("explanation" LaTeX-env-args ["argument"] 0)
    '("proof" LaTeX-env-args ["argument"] 0))
   (LaTeX-add-counters
    "lecturecounter")
   (LaTeX-add-lengths
    "thickarrayrulewidth")
   (LaTeX-add-xcolor-definecolors
    "myg"
    "myb"
    "myr"
    "mytheorembg"
    "mytheoremfr"
    "mylenmabg"
    "mylenmafr"
    "mypropbg"
    "mypropfr"
    "myrefbg"
    "myreffr"
    "myexamplebg"
    "myexamplefr"
    "myexampleti"
    "mydefinitbg"
    "mydefinitfr"
    "notesgreen"
    "myp"
    "mygr"
    "myred"
    "myyellow"
    "myexercisebg"
    "myexercisefg"
    "reallylightgray"
    "correct"
    "myblue"
    "mygreen"
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
    "note"
    "notation"
    "previouslyseen"
    "problem"
    "observe"
    "property"
    "intuition")
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
    "expl"
    "definition"
    "question"
    "solution")
   (LaTeX-add-tcolorbox-newtcolorboxes
    '("note" "1" "[" "")
    '("Solution" "" "" ""))
   (LaTeX-add-tcolorbox-tcbuselibraries
    "theorems,skins,hooks"))
 :latex)

