%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/unpitched_percussion/cymbals.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_cymbals_bookpart_one = \drummode {
  \no_music % remove when inputting notes
  % cymc
}

part_cymbals_bookpart_one = \new DrumStaff \with {
  instrumentName = "Cymbals"
  shortInstrumentName = "Cym."
  midiInstrument = "standard kit"
  drumStyleTable = #percussion-style
} { \override Staff.StaffSymbol.line-count = #1 << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_cymbals_bookpart_one >> }

part_cymbals_part_bookpart_one = \new DrumStaff \with {
  midiInstrument = "standard kit"
  drumStyleTable = #percussion-style
} { \override Staff.StaffSymbol.line-count = #1 << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_cymbals_bookpart_one >> }