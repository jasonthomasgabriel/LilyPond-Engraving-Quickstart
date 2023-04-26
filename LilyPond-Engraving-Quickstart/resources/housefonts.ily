%%%% ENGRAVING QUICKSTART
%%%% resources/housefonts.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"

\paper  {
  #(define fonts
     (make-pango-font-tree "Source Serif Pro"
       "Source Sans Pro"
       "Source Code Pro"
       (/ staff-height pt 20)))
}