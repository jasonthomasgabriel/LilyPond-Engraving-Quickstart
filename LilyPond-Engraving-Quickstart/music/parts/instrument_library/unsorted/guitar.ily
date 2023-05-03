%%%% ENGRAVING QUICKSTART
%%%% Bookpart_1/Parts/unsorted/guitar.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_guitar = \relative c' {
    \transposition c
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_guitar_score = \new Staff \with {
    instrumentName = "Classical Guitar"
    shortInstrumentName = "Gt."
    midiInstrument = "acoustic guitar (nylon)"
  } { \clef "treble_8" << \removeWithTag #'part \global \removeWithTag #'part \notes_guitar >> }
  
  % Part Only Part Definition  
  part_guitar_part = \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
  } { \clef "treble_8" << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_guitar } >> }
  
% Scoring (for part only purposes)
  scoring_guitar_part = {
    <<
      \part_guitar_part
    >>
  }