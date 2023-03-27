%%%% ENGRAVING STANDARD SONGBOOK
%%%% bookpart_1/instrument_library_bookparts/_user_instruments/user_instrument_7_bookpart_1.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"

\bookpart {
  \header {
    % Centralised headers for this bookpart. If needed a header can be overwritten by restating below the include-file
    \include "../../_includes/_headers_bookpart_1.ily"

    instrument = "" % "Part" would be an apt name, as this could easily say "full score". I could change it, but the whole point is to leave as much Lilypond's standards as possible.
  }
  
  % Optionally set staff size in \layout{}, depending on needs when dealing with multiple scores.
    \score { \scoring_user_instrument_seven_bookpart_one \layout { %{ #(layout-set-staff-size 20) %} indent = 0\mm short-indent = 0\mm } \midi { \set Score.midiChannelMapping = #'instrument } }
  
  % Articulated MIDI score block %
    % (Purposely creates no visual output) %
    \score { \unfoldRepeats \articulate << \scoring_user_instrument_seven_bookpart_one >> \midi { \set Score.midiChannelMapping = #'instrument } }
}