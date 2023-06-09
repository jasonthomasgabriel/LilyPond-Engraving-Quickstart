%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% music/parts/instrument_library/resources/books/brass/book_trumpet.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"

% Set indentation to NO instrument name on the left
\include "../../../../../../resources/indentation_no_instrumentnames.ily"

\book {
  \bookOutputSuffix "trumpet"
  \bookpart {
    \header {
      % Headers are centralised (to make things easier when dealing with multiple parts).
      % If needed a header can be overwritten by restating below the include-file.
      \include "../../../../../headers.ily"

      % Set the instrument and/or part name below
      instrument = \markup \concat { "Trumpet in B" \super \flat }
    }

    % Score 
      % Optionally set staff size in \layout{}, depending on needs when dealing with multiple scores.
      
      % (Visual output only - transposed part)
      \score { \scoring_trumpet_part_transposed \layout { %{ #(layout-set-staff-size 20) %} } }
      
      % (MIDI output only - concert pitch)
      \score { \scoring_trumpet_part \midi { \set Score.midiChannelMapping = #'instrument } }

    % Articulated MIDI score block %
      % (Purposely creates no visual output) %
      \score { \unfoldRepeats \articulate << \scoring_trumpet_part >> \midi { \set Score.midiChannelMapping = #'instrument } }
  }
}