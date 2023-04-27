%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/woodwinds/oboe.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_oboe_one = \relative c' {
    \no_music % remove when inputting notes
  }

  notes_oboe_two = \relative c' {
    % input notes here
    % when working with a 2nd part, set printPartCombineTexts to ##t below
  }

% Part definitions
  % Full Score Part Definition 
  part_oboe_score = \new Staff \with {
    instrumentName = "Oboe"
    shortInstrumentName = "Ob."
    midiInstrument = "oboe"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f    
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \partCombine #'(1 . 0) \notes_oboe_one \notes_oboe_two >> }

  % Part Only Part Definition
  part_oboe_part = \new Staff \with {
    midiInstrument = "oboe"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \partCombine #'(1 . 0) \notes_oboe_one \notes_oboe_two >> }
  
% Scoring (for part only purposes)
  scoring_oboe_part = {
    <<
      \part_oboe_part
    >>
  }