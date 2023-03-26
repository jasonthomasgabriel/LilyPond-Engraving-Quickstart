%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/unpitched_percussion/bassdrum.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_bassdrum_bookpart_one = \drummode {
  hc
}

part_bassdrum_bookpart_one = \new DrumStaff \with {
  instrumentName = "Bass Drum"
  shortInstrumentName = "B.D."
  midiInstrument = "woodblock" %saving midi channels for preview purposes
  drumStyleTable = #percussion-style
} { \override Staff.StaffSymbol.line-count = #1 << \global_bookpart_one \notes_bassdrum_bookpart_one >> }