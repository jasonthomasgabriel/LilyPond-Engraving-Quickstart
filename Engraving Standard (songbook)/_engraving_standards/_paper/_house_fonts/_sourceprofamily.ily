%%%% ENGRAVING STANDARD SONGBOOK
%%%% _engraving_standards/_paper/_house_fonts/_sourceprofamily.ily
%%%% version: 3.1
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"

\paper  {
  #(define fonts
     (make-pango-font-tree "Source Serif Pro"
       "Source Sans Pro"
       "Source Code Pro"
       (/ staff-height pt 20)))
}