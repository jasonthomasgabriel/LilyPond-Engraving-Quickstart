%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/woodwinds/bassoon.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_bassoon_one = \relative c' {
    \no_music % remove when inputting notes
  }

  notes_bassoon_two = \relative c' {
    % input notes here
    % when working with a 2nd part, set printPartCombineTexts to ##t below
  }

% Part definitions
  % Full Score Part Definition 
  part_bassoon_score = \new Staff \with {
    instrumentName = "Bassoon"
    shortInstrumentName = "Bn."
    midiInstrument = "bassoon"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f  
  } { \clef bass << \removeWithTag #'part \global \removeWithTag #'part \partCombine #'(1 . 0) \notes_bassoon_one \notes_bassoon_two >> }

  % Part Only Part Definition
  part_bassoon_part = \new Staff \with {
    midiInstrument = "bassoon"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f  
  } { \clef bass << \removeWithTag #'score \global \removeWithTag #'score \partCombine #'(1 . 0) \notes_bassoon_one \notes_bassoon_two >> }

% Scoring (for part only purposes)
  scoring_bassoon_part = {
    <<
      \part_bassoon_part
    >>
  }