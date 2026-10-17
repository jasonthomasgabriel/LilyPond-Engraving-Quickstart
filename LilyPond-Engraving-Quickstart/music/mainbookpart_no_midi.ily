%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/mainbookpart_no_midi.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"

\bookpart {
  \header {
    % Headers are centralised (to make things easier when dealing with multiple parts).
    % If needed a header can be overwritten by restating below the include-file.
    \include "headers.ily"

    % Set the instrument and/or part name below
    % instrument = ""
  }

  % Score
    % Optionally set staff size in \layout{}, depending on needs when dealing with multiple scores.
    % MIDI output is disabled in this version of the main bookpart.
    \score { \scoring \layout { %{ #(layout-set-staff-size 20) %} } }
}
