%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/unpitched_percussion/bassdrum.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_bassdrum_bookpart_one = \drummode {
  bd
}

part_bassdrum_bookpart_one = \new DrumStaff \with {
  instrumentName = "Bass Drum"
  shortInstrumentName = "B.D."
  midiInstrument = "orchestra kit"
  drumStyleTable = #percussion-style
} { \override Staff.StaffSymbol.line-count = #1 << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_bassdrum_bookpart_one >> }

part_bassdrum_part_bookpart_one = \new DrumStaff \with {
  midiInstrument = "orchestra kit"
  drumStyleTable = #percussion-style
} { \override Staff.StaffSymbol.line-count = #1 << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_bassdrum_bookpart_one >> }