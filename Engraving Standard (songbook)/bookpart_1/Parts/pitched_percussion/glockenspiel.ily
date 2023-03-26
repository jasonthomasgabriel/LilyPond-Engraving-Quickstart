%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/pitched_percussion/glockenspiel.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_glockenspiel_bookpart_one = \relative c' {
  \transposition c''
  c
}

part_glockenspiel_bookpart_one = \new Staff \with {
  instrumentName = "Glockenspiel"
  shortInstrumentName = "Gls."
  midiInstrument = "glockenspiel"
} { \clef treble << \global_bookpart_one \notes_glockenspiel_bookpart_one >> }