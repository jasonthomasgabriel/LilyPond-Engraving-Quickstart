%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/pitched_percussion/glockenspiel.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_glockenspiel = \relative c' {
    \transposition c'''
    \no_music % remove when inputting notes
}

% Part definitions
  % Full Score Part Definition 
  part_glockenspiel_score = \new Staff \with {
    instrumentName = "Glockenspiel"
    shortInstrumentName = "Gls."
    midiInstrument = "glockenspiel"
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_glockenspiel >> }

  % Part Only Part Definition
  part_glockenspiel_part = \new Staff \with {
    midiInstrument = "glockenspiel"
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_glockenspiel >> }
  
% Scoring (for part only purposes)
  scoring_glockenspiel_part = {
    <<
      \part_glockenspiel_part
    >>
  }