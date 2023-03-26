%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/part.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_default_part_bookpart_one = \relative c' {
  c
}

part_default_part_bookpart_one = \new Staff \with {
  %instrumentName = ""
  %shortInstrumentName = ""
    %midiInstrument = ""
} { \clef treble << \tempomarkings_bookpart_one \global_bookpart_one \notes_default_part_bookpart_one >> }