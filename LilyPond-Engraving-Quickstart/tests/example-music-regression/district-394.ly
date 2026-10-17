\version "2.25.20"
\language "english"

no_music = \skip 4
no_lyrics = \lyricmode {}
fileversionreferencetracker = "example music regression"

#(ly:set-option 'relative-includes #t)
\include "articulate.ly"
\include "../../resources/headerdefinitions.ily"
\include "../../resources/papersize_margins.ily"
#(set-global-staff-size 14)
\include "../../resources/housefonts.ily"
\include "../../resources/notationrules.ily"
\include "../../music/functions_variables.ily"
\include "district-394-music.ily"

scoring = {
  <<
    \new Staff \with {
      instrumentName = "Viola (solo)"
      shortInstrumentName = "Vla."
      midiInstrument = "string ensemble 1"
    } {
      \clef alto
      << \districtGlobal \districtViolaExcerpt >>
    }
  >>
}

\book {
  \header {
    title = "District 394"
    subtitle = "Viola (solo), bars 6-13"
    composer = "Jason Thomas Gabriel"
  }
  \include "../../music/mainbookpart.ily"
}
