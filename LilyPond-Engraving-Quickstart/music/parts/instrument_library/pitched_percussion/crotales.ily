%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/pitched_percussion/crotales.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_crotales = \relative c' {
    \transposition c'''
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_crotales_score = \new Staff \with {
    instrumentName = "Crotales"
    shortInstrumentName = "Crot."
    midiInstrument = "glockenspiel" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_crotales >> }

  % Part Only Part Definition
  part_crotales_part = \new Staff \with {
    midiInstrument = "glockenspiel" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_crotales >> }
  
% Scoring (for part only purposes)
  scoring_crotales_part = {
    <<
      \part_crotales_part
    >>
  }