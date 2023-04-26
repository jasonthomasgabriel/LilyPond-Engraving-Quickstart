%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/brass/trumpet.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_trumpet = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_trumpet_score = \new Staff \with {
    instrumentName = \markup \concat { "Trumpet in B" \super \flat }
    shortInstrumentName = \markup \concat { "Tr.B" \super { \flat } "." }
    midiInstrument = "trumpet"
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_trumpet >> }

  % Part Only Part Definition
  part_trumpet_part = \new Staff \with {
    midiInstrument = "trumpet"
  } { \clef treble << \removeWithTag #'score \transpose bf c' { \global } \removeWithTag #'score \transpose bf c' { \notes_trumpet } >> }
  
% Scoring (for part only purposes)
  scoring_trumpet_part = {
    <<
      \part_trumpet_part
    >>
  }