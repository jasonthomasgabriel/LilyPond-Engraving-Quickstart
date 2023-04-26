%%%% ENGRAVING QUICKSTART
%%%% music/parts/unsorted/harp.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_harp_upper = \relative c' {
    \no_music % remove when inputting notes
  }
  
  notes_harp_lower = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_harp_score = \new PianoStaff \with {
    instrumentName = "Harp"
    shortInstrumentName = "Hp."
  } {
      <<
        \new Staff = "staff_harp_upper" \with {
          midiInstrument = "orchestral harp"
        } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_harp_upper >> } 
        \new Staff = "staff_harp_lower" \with {
          midiInstrument = "orchestral harp"
        } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_harp_lower >> }
      >>
  }

  % Part Only Part Definition
  part_harp_part = \new PianoStaff {
    <<
      \new Staff = "staff_harp_upper" \with {
        midiInstrument = "orchestral harp"
      } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_harp_upper >> } 
      \new Staff = "staff_harp_lower" \with {
        midiInstrument = "orchestral harp"
      } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_harp_lower >> }
    >>
  }
  
% Scoring (for part only purposes)
  scoring_harp_part = {
    <<
      \part_harp_part
    >>
  }