%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/woodwinds/clarinet.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_clarinet = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_clarinet_score = \new Staff \with {
    instrumentName = \markup \concat { "Clarinet in B" \super \flat }
    shortInstrumentName = \markup \concat { "Cl.B" \super { \flat } "."}
    midiInstrument = "clarinet"
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_clarinet >> }

  % Part Only Part Definition
  part_clarinet_part = \new Staff \with {
    midiInstrument = "clarinet"
  } { \clef treble << \removeWithTag #'score \transpose bf c' { \global } \removeWithTag #'score \transpose bf c' { \notes_clarinet } >> }
  
% Scoring (for part only purposes)
  scoring_clarinet_part = {
    <<
      \part_clarinet_part
    >>
  }