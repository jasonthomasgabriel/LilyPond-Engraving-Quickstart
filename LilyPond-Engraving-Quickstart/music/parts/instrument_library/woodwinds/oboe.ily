%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/woodwinds/oboe.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_oboe = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_oboe_score = \new Staff \with {
    instrumentName = "Oboe"
    shortInstrumentName = "Ob."
    midiInstrument = "oboe"
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_oboe >> }

  % Part Only Part Definition
  part_oboe_part = \new Staff \with {
    midiInstrument = "oboe"
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_oboe >> }
  
% Scoring (for part only purposes)
  scoring_oboe_part = {
    <<
      \part_oboe_part
    >>
  }