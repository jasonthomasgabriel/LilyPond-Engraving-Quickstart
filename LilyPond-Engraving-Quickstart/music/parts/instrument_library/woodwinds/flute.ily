%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/woodwinds/flute.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_flute = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_flute_score = \new Staff \with {
    instrumentName = "Flute"
    shortInstrumentName = "Fl."
    midiInstrument = "flute"
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_flute >> }

  % Part Only Part Definition
  part_flute_part = \new Staff \with {
    midiInstrument = "flute"
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_flute >> }
  
% Scoring (for part only purposes)
  scoring_flute_part = {
    <<
      \part_flute_part
    >>
  }