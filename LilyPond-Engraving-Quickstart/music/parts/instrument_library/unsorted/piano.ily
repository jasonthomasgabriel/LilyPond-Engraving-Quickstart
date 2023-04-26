%%%% ENGRAVING QUICKSTART
%%%% music/parts/unsorted/piano.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_piano_upper = \relative c' {
    \no_music % remove when inputting notes
  }
  
  notes_piano_lower = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_piano_score = \new PianoStaff \with {
    instrumentName = "Piano"
    shortInstrumentName = "Pno."
  } {
      <<
        \new Staff = "staff_piano_upper" \with {
          midiInstrument = "acoustic grand"
        } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_piano_upper >> } 
        \new Staff = "staff_piano_lower" \with {
          midiInstrument = "acoustic grand"
        } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_piano_lower >> }
      >>
  }

  % Part Only Part Definition
  part_piano_part = \new PianoStaff {
    <<
      \new Staff = "staff_piano_upper" \with {
        midiInstrument = "acoustic grand"
      } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_piano_upper >> } 
      \new Staff = "staff_piano_lower" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_piano_lower >> }
    >>
  }
  
% Scoring (for part only purposes)
  scoring_piano_part = {
    <<
      \part_piano_part
    >>
  }