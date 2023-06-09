%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% music/parts/instrument_library/strings/violin_II.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"
\language "english"

% Note input
  notes_violin_II = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_violin_II_score = \new Staff \with {
    instrumentName = "Violin II"
    shortInstrumentName = "Vl. II"
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_violin_II >> }

  % Part Only Part Definition  
  part_violin_II_part = \new Staff \with {
    midiInstrument = "string ensemble 1" %saving midi channels for preview purposes
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_violin_II } >> }
  
% Scoring (for part only purposes)
  scoring_violin_II_part = {
    <<
      \part_violin_II_part
    >>
  }