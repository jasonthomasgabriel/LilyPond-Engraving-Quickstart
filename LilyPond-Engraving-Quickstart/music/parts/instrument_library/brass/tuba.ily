%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/brass/tuba.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_tuba = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_tuba_score = \new Staff \with {
    instrumentName = "Tuba"
    shortInstrumentName = "Tb."
    midiInstrument = "tuba"
  } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_tuba >> }

  % Part Only Part Definition
  part_tuba_part = \new Staff \with {
    midiInstrument = "tuba"
  } { \clef bass << \removeWithTag #'score \global \removeWithTag #'score \notes_tuba >> }
  
% Scoring (for part only purposes)
  scoring_tuba_part = {
    <<
      \part_tuba_part
    >>
  }