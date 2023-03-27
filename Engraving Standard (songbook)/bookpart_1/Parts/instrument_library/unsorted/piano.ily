%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Parts/unsorted/piano.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

notes_piano_upper_bookpart_one = \relative c' {
  c
}

notes_piano_lower_bookpart_one = \relative c' {
  c
}

part_piano_bookpart_one = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pno."
} {
    <<
      \new Staff = "staff_piano_upper_bookpart_one" \with {
        midiInstrument = "acoustic grand"
      } { \clef treble << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_piano_upper_bookpart_one >> } 
      \new Staff = "staff_piano_lower_bookpart_one" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_piano_lower_bookpart_one >> }
    >>
}

part_piano_part_bookpart_one = \new PianoStaff {
  <<
    \new Staff = "staff_piano_upper_bookpart_one" \with {
      midiInstrument = "acoustic grand"
    } { \clef treble << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_piano_upper_bookpart_one >> } 
    \new Staff = "staff_piano_lower_bookpart_one" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \notes_piano_lower_bookpart_one >> }
  >>
}