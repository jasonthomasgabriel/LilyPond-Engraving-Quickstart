%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/brass/trombone.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_trombone_one = \relative c' {
    \no_music % remove when inputting notes
  }

  notes_trombone_two = \relative c' {
    % input notes here
    % when working with a 2nd part, set printPartCombineTexts to ##t below
  }


% Part definitions
  % Full Score Part Definition 
  part_trombone_score = \new Staff \with {
    instrumentName = "Trombone"
    shortInstrumentName = "Trb."
    midiInstrument = "trombone"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f  
  } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \partCombine #'(1 . 0) \notes_trombone_one \notes_trombone_two >> }

  % Part Only Part Definition
  part_trombone_part = \new Staff \with {
    midiInstrument = "trombone"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f  
  } { \clef bass << \removeWithTag #'score \global \removeWithTag #'score \partCombine #'(1 . 0) \notes_trombone_one \notes_trombone_two >> }
  
% Scoring (for part only purposes)
  scoring_trombone_part = {
    <<
      \part_trombone_part
    >>
  }