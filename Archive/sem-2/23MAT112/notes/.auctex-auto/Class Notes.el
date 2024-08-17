;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "Class Notes"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("report" "twoside")))
   (TeX-run-style-hooks
    "latex2e"
    "preamble"
    "report"
    "rep10")
   (LaTeX-add-labels
    "sec:Diagonalizable Matrices"
    "dfn1"
    "eq:1"
    "eq:2"
    "eq:3"
    "sec:Symmetric Matrices"
    "eq:Conjugate"
    "sec:Chnge Of Scale"
    "sec:Odd And Even Functions"
    "dfn2"
    "dfn3"
    "sec:taylor_polynomial"
    "sec:error_estimation"
    "sec:differential_calculus_of_scalar_and_vector_fields"
    "sec:directional_derivative"))
 :latex)

