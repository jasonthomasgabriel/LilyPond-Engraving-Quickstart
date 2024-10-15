%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/parts/instrument_library/resources/books/voice/book_mezzo_soprano.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.25.20"

% Set indentation to NO instrument name on the left
\include "../../../../../../resources/indentation_no_instrumentnames.ily"

\book {
  \bookOutputSuffix "Mezzo-Soprano"
  \bookpart {
    \header {
      % Headers are centralised (to make things easier when dealing with multiple parts).
      % If needed a header can be overwritten by restating below the include-file.
      \include "../../../../../headers.ily"

      % Set the instrument and/or part name below
      instrument = "Mezzo-Soprano"
    }

    % Score 
      % Optionally set staff size in \layout{}, depending on needs when dealing with multiple scores.
      \score { \scoring_mezzo_soprano_part \layout { %{ #(layout-set-staff-size 20) %} } \midi { \set Score.midiChannelMapping = #'instrument } }

    % Articulated MIDI score block %
      % (Purposely creates no visual output) %
      \score { \unfoldRepeats \articulate << \scoring_mezzo_soprano_part >> \midi { \set Score.midiChannelMapping = #'instrument } }
  }
}