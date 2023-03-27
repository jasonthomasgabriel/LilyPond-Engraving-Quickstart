%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/woodwinds/clarinet.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_clarinet_bookpart_one = \relative c' {
  c
}

part_clarinet_bookpart_one = \new Staff \with {
  instrumentName = \markup \concat { "Clarinet in B" \super \flat }
  shortInstrumentName = \markup \concat { "Cl.B" \super { \flat } "."}
  midiInstrument = "clarinet"
} { \clef treble << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_clarinet_bookpart_one >> }

part_clarinet_part_bookpart_one = \new Staff \with {
  midiInstrument = "clarinet"
} { \clef treble << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_clarinet_bookpart_one >> }