%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% music/parts/instrument_library/strings/contrabass.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"
\language "english"

% Note input
  notes_contrabass = \relative c' {
    \transposition c
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_contrabass_score = \new Staff \with {
    instrumentName = "Contrabass"
    shortInstrumentName = "Cb."
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_contrabass >> }

  % Part Only Part Definition
  part_contrabass_part = \new Staff \with {
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef bass << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_contrabass } >> }
  
 % Scoring (for part only purposes)
  scoring_contrabass_part = {
    <<
      \part_contrabass_part
    >>
  }