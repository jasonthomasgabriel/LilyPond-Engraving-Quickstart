%%%% LILYPOND ENGRAVING QUICKSTART v4.0.3
%%%% music/parts/instrument_library/resources/books/woodwinds/book_alto_saxophone.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"

\include "../../../../../../resources/indentation_no_instrumentnames.ily"

\book {
  \bookOutputSuffix "alto-saxophone"
  \bookpart {
    \header {
      \include "../../../../../headers.ily"
      instrument = "Alto Saxophone in E-flat"
    }

    \score { \scoring_alto_saxophone_part_transposed \layout { } }

    \score {
      \scoring_alto_saxophone_part
      \midi { \set Score.midiChannelMapping = #'instrument }
    }

    \score {
      \unfoldRepeats \articulate << \scoring_alto_saxophone_part >>
      \midi { \set Score.midiChannelMapping = #'instrument }
    }
  }
}
