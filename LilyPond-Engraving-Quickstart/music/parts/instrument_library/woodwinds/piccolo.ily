%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/woodwinds/piccolo.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_piccolo = \relative c' {
    \transposition c''
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_piccolo_score = \new Staff \with {
    instrumentName = "Piccolo"
    shortInstrumentName = "Pic."
    midiInstrument = "flute" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_piccolo >> }

  % Part Only Part Definition
  part_piccolo_part = \new Staff \with {
    midiInstrument = "flute" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_piccolo >> }
  
% Scoring (for part only purposes)
  scoring_piccolo_part = {
    <<
      \part_piccolo_part
    >>
  }