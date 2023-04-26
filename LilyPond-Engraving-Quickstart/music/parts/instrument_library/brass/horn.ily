%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/brass/horn.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_horn = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_horn_score = \new Staff \with {
    instrumentName = "Horn in F"
    shortInstrumentName = "Hn.F."
    midiInstrument = "french horn"
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_horn >> }

  % Part Only Part Definition
  part_horn_part = \new Staff \with {
    midiInstrument = "french horn"
  } { \clef treble << \removeWithTag #'score \transpose f c' { \global } \removeWithTag #'score \transpose f c' { \notes_horn } >> }

% Scoring (for part only purposes)
  scoring_horn_part = {
    <<
      \part_horn_part
    >>
  }