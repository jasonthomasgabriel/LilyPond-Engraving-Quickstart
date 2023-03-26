%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/unpitched_percussion/cymbals.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_cymbals_bookpart_one = \drummode {
  hc
}

part_cymbals_bookpart_one = \new DrumStaff \with {
  instrumentName = "Cymbals"
  shortInstrumentName = "Cym."
  midiInstrument = "" % have to look into this still
  drumStyleTable = #percussion-style
} { \override Staff.StaffSymbol.line-count = #1 << \global_bookpart_one \notes_cymbals_bookpart_one >> }

part_cymbals_part_bookpart_one = \new DrumStaff \with {
  drumStyleTable = #percussion-style
} { \override Staff.StaffSymbol.line-count = #1 << \tempomarkings_bookpart_one \global_bookpart_one \notes_cymbals_bookpart_one >> }