%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% music/parts/instrument_library/strings/viola.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"
\language "english"

% Note input
  notes_viola = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_viola_score = \new Staff \with {
    instrumentName = "Viola"
    shortInstrumentName = "Vla."
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef alto << \removeWithTag #'part \global \removeWithTag #'part \notes_viola >> }

  % Part Only Part Definition
  part_viola_part = \new Staff \with {
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef alto << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_viola } >> }
  
% Scoring (for part only purposes)
  scoring_viola_part = {
    <<
      \part_viola_part
    >>
  }