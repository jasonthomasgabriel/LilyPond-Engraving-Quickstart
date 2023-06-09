%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% music/parts/instrument_library/brass/tuba.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"
\language "english"

% Note input
  notes_tuba_one = \relative c' {
    \no_music % remove when inputting notes
  }

  notes_tuba_two = \relative c' {
    % input notes here
    % when working with a 2nd part, set printPartCombineTexts to ##t below
  }


% Part definitions
  % Full Score Part Definition 
  part_tuba_score = \new Staff \with {
    instrumentName = "Tuba"
    shortInstrumentName = "Tb."
    midiInstrument = "tuba"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f  
  } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \partCombine #'(1 . 0) \notes_tuba_one \notes_tuba_two >> }

  % Part Only Part Definition
  part_tuba_part = \new Staff \with {
    midiInstrument = "tuba"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f  
  } { \clef bass << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \partCombine #'(1 . 0) \notes_tuba_one \notes_tuba_two } >> }
  
% Scoring (for part only purposes)
  scoring_tuba_part = {
    <<
      \part_tuba_part
    >>
  }