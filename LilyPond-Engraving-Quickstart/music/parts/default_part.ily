%%%% ENGRAVING QUICKSTART
%%%% music/parts/default_part.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"

\language "english"

notes_default_part = \relative c' {
  \no_music % remove when inputting notes
}

part_default_part = \new Staff \with {
  %instrumentName = ""
  %shortInstrumentName = ""
  %midiInstrument = ""
} { \clef treble << \global \notes_default_part >> }