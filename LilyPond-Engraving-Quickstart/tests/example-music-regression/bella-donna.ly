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
\include "bella-donna-music.ily"

scoring = {
  <<
    \new ChordNames { \bellaDonnaChords }
    \new Staff \with {
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      midiInstrument = "flute"
    } {
      \clef treble
      \new Voice = "soprano_voice" {
        << \bellaDonnaGlobal \bellaDonnaSopranoExcerpt >>
      }
    }
    \new Lyrics {
      \lyricsto "soprano_voice" \bellaDonnaSopranoLyrics
    }
    \new PianoStaff \with {
      instrumentName = "Piano"
      shortInstrumentName = "Pno."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic grand"
      } {
        \clef treble
        << \bellaDonnaGlobal \bellaDonnaPianoUpperExcerpt >>
      }
      \new Staff \with {
        midiInstrument = "acoustic grand"
      } {
        \clef bass
        << \bellaDonnaGlobal \bellaDonnaPianoLowerExcerpt >>
      }
    >>
  >>
}

\book {
  \header {
    title = "Ouverture"
    subtitle = "Bella/Donna, bars 5-10"
    composer = "Jason Thomas Gabriel"
  }
  \include "../../music/mainbookpart.ily"
}
