%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/woodwinds/bassoon.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_bassoon = \relative c' {
    \no_music % remove when inputting notes
}

% Part definitions
  % Full Score Part Definition 
  part_bassoon_score = \new Staff \with {
    instrumentName = "Bassoon"
    shortInstrumentName = "Bn."
    midiInstrument = "bassoon"
  } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_bassoon >> }

  % Part Only Part Definition
  part_bassoon_part = \new Staff \with {
    midiInstrument = "bassoon"
  } { \clef bass << \removeWithTag #'score \global \removeWithTag #'score \notes_bassoon >> }

% Scoring (for part only purposes)
  scoring_bassoon_part = {
    <<
      \part_bassoon_part
    >>
  }