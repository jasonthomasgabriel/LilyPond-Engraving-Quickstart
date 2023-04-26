%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/strings/violin_I.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input 
  notes_violin_I = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_violin_I_score = \new Staff \with {
    instrumentName = "Violin I"
    shortInstrumentName = "Vl. I"
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_violin_I >> }

  % Part Only Part Definition  
  part_violin_I_part = \new Staff \with {
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_violin_I >> }

% Scoring (for part only purposes)
  scoring_violin_I_part = {
    <<
      \part_violin_I_part
    >>
  }