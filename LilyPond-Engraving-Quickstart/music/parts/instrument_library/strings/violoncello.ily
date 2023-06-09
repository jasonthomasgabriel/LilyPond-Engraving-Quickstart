%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% music/parts/instrument_library/strings/violoncello.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"
\language "english"

% Note input
  notes_violoncello = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_violoncello_score = \new Staff \with {
    instrumentName = "Violoncello"
    shortInstrumentName = "Vc."
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \notes_violoncello >> }

  % Part Only Part Definition
  part_violoncello_part = \new Staff \with {
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef bass << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_violoncello } >> }
  
% Scoring (for part only purposes)
  scoring_violoncello_part = {
    <<
      \part_violoncello_part
    >>
  }