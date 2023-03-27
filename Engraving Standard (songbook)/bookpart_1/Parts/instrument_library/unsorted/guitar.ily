%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/unsorted/guitar.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_guitar_bookpart_one = \relative c' {
  c
}

part_guitar_bookpart_one = \new Staff \with {
  instrumentName = "Classical Guitar"
  shortInstrumentName = "Gt."
  midiInstrument = "acoustic guitar (nylon)"
} { \clef "treble_8" << \global_bookpart_one \notes_guitar_bookpart_one >> }

part_guitar_part_bookpart_one = \new Staff \with {
  midiInstrument = "acoustic guitar (nylon)"
} { \clef "treble_8" << \tempomarkings_bookpart_one \global_bookpart_one \notes_guitar_bookpart_one >> }