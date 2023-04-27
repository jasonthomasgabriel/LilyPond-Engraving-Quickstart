%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/pitched_percussion/soprano_metallophone.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_soprano_metallophone = \relative c' {
    \transposition c''
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_soprano_metallophone_score = \new Staff \with {
    instrumentName = "Sop. Metallophone"
    shortInstrumentName = "Sop. Met."
    midiInstrument = "glockenspiel" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_soprano_metallophone >> }

  % Part Only Part Definition
  part_soprano_metallophone_part = \new Staff \with {
    midiInstrument = "glockenspiel" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_soprano_metallophone >> }
  
% Scoring (for part only purposes)
  scoring_soprano_metallophone_part = {
    <<
      \part_soprano_metallophone_part
    >>
  }