%%%% ENGRAVING STANDARD SONGBOOK
%%%% bookpart_1/Parts/instrument_library/_user_instruments/user_instrument_9.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_user_instrument_nine_bookpart_one = \relative c' {
  c
}

part_user_instrument_nine_bookpart_one = \new Staff \with {
  % instrumentName = ""
  % shortInstrumentName = ""
  % midiInstrument = ""
} { \clef treble << \global_bookpart_one \notes_trombone_bookpart_one >> }

part_user_instrument_nine_part_bookpart_one = \new Staff \with {
  % midiInstrument = ""
} { \clef treble << \tempomarkings_bookpart_one \global_bookpart_one \notes_trombone_bookpart_one >> }