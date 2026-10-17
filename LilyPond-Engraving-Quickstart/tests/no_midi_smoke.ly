\version "2.25.20"

no_music = \skip 4
fileversionreferencetracker = "smoke test"

#(ly:set-option 'relative-includes #t)
\include "../resources/headerdefinitions.ily"
\include "../resources/papersize_margins.ily"
#(set-global-staff-size 14)
\include "../resources/housefonts.ily"
\include "../resources/notationrules.ily"
\include "../music/functions_variables.ily"
\include "../music/bundle_music_default_part.ily"

\book {
  \include "../music/mainbookpart_no_midi.ily"
}
