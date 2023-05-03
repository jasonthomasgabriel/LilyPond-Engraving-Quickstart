%%%% ENGRAVING QUICKSTART
%%%% music/parts/unpitched_percussion/cymbals.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_cymbals = \drummode {
    \no_music % remove when inputting notes
    % cymc
  }

% Part definitions
  % Full Score Part Definition 
  part_cymbals_score = \new DrumStaff \with {
    instrumentName = "Cymbals"
    shortInstrumentName = "Cym."
    midiInstrument = "standard kit"
    drumStyleTable = #percussion-style
  } { \override Staff.StaffSymbol.line-count = #1 << \removeWithTag #'part \global \removeWithTag #'part \notes_cymbals >> }

  % Part Only Part Definition
  part_cymbals_part = \new DrumStaff \with {
    midiInstrument = "standard kit"
    drumStyleTable = #percussion-style
  } { \override Staff.StaffSymbol.line-count = #1 << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_cymbals } >> }
  
% Scoring (for part only purposes)
  scoring_cymbals_part = {
    <<
      \part_cymbals_part
    >>
  }