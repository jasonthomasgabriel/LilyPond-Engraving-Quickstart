%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/instrument_library/brass/horn.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_horn_bookpart_one = \relative c' {
  \no_music % remove when inputting notes
}

part_horn_bookpart_one = \new Staff \with {
  instrumentName = "Horn in F"
  shortInstrumentName = "Hn.F."
  midiInstrument = "french horn"
} { \clef treble << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_horn_bookpart_one >> }

part_horn_part_bookpart_one = \new Staff \with {
  midiInstrument = "french horn"
} { \clef treble << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_horn_bookpart_one >> }