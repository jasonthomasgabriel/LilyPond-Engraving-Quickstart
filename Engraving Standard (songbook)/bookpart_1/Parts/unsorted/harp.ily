%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/unsorted/harp.ily
%%%% version: 3.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_harp_upper_bookpart_one = \relative c' {
  c
}

notes_harp_lower_bookpart_one = \relative c' {
  c
}

part_harp_bookpart_one = \new PianoStaff \with {
  instrumentName = "Harp"
  shortInstrumentName = "Hp."
} {
    <<
      \new Staff = "staff_harp_upper_bookpart_one" \with {
        midiInstrument = "orchestral harp"
      } { \clef treble << \global_bookpart_one \notes_harp_upper_bookpart_one >> } 
      \new Staff = "staff_harp_lower_bookpart_one" \with {
        midiInstrument = "orchestral harp"
      } { \clef bass << \global_bookpart_one \notes_harp_lower_bookpart_one >> }
    >>
  }