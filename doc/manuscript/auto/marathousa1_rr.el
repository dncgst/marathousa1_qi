(TeX-add-style-hook
 "marathousa1_rr"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("elsarticle" "preprint" "authoryear" "times")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("inputenc" "utf8") ("babel" "english") ("hyperref" "colorlinks")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "elsarticle"
    "elsarticle10"
    "fontenc"
    "inputenc"
    "babel"
    "natbib"
    "hyperref"
    "lineno"
    "textcomp"
    "amsmath")
   (LaTeX-add-labels
    "fig:1"
    "fig:2"
    "fig:3"
    "fig:4"
    "tab:1"
    "tab:2"
    "fig:5"
    "fig:6"
    "tab:3"
    "fig:7"
    "fig:8"
    "fig:9"
    "fig:10"
    "fig:11"
    "fig:12")
   (LaTeX-add-bibliographies
    "marathousa_rr"))
 :latex)

