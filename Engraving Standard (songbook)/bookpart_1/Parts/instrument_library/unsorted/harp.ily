%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/unsorted/harp.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_harp_upper_bookpart_one = \relative c' {
  \no_music % remove when inputting notes
}

notes_harp_lower_bookpart_one = \relative c' {
  \no_music % remove when inputting notes
}

part_harp_bookpart_one = \new PianoStaff \with {
  instrumentName = "Harp"
  shortInstrumentName = "Hp."
} {
    <<
      \new Staff = "staff_harp_upper_bookpart_one" \with {
        midiInstrument = "orchestral harp"
      } { \clef treble << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_harp_upper_bookpart_one >> } 
      \new Staff = "staff_harp_lower_bookpart_one" \with {
        midiInstrument = "orchestral harp"
      } { \clef bass << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_harp_lower_bookpart_one >> }
    >>
}

part_harp_part_bookpart_one = \new PianoStaff {
  <<
    \new Staff = "staff_harp_upper_bookpart_one" \with {
      midiInstrument = "orchestral harp"
    } { \clef treble << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_harp_upper_bookpart_one >> } 
    \new Staff = "staff_harp_lower_bookpart_one" \with {
      midiInstrument = "orchestral harp"
    } { \clef bass << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_harp_lower_bookpart_one >> }
  >>
}