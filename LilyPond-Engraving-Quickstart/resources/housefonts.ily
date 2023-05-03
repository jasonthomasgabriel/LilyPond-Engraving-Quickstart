%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% resources/housefonts.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"

\paper  {
  #(define fonts
     (make-pango-font-tree "Source Serif Pro"
       "Source Sans Pro"
       "Source Code Pro"
       (/ staff-height pt 20)))
}