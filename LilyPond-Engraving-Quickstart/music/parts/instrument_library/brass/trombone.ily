%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/brass/trombone.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_trombone = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_trombone_score = \new Staff \with {
    instrumentName = "Trombone"
    shortInstrumentName = "Trb."
    midiInstrument = "trombone"
  } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_trombone >> }

  % Part Only Part Definition
  part_trombone_part = \new Staff \with {
    midiInstrument = "trombone"
  } { \clef bass << \removeWithTag #'score \global \removeWithTag #'score \notes_trombone >> }
  
% Scoring (for part only purposes)
  scoring_trombone_part = {
    <<
      \part_trombone_part
    >>
  }