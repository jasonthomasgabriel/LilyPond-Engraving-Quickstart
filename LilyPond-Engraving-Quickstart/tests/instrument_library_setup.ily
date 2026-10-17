no_music = \skip 4
no_lyrics = \lyricmode {}
fileversionreferencetracker = "smoke test"

#(ly:set-option 'relative-includes #t)
\include "articulate.ly"
\include "../resources/headerdefinitions.ily"
\include "../resources/papersize_margins.ily"
#(set-global-staff-size 14)
\include "../resources/housefonts.ily"
\include "../resources/notationrules.ily"
\include "../music/functions_variables.ily"
\include "../music/bundle_music_instrument_library.ily"
