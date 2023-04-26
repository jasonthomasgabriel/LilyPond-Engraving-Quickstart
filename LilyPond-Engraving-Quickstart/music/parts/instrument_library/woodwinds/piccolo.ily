%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/woodwinds/piccolo.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_piccolo_one = \relative c' {
    \transposition c''
    \no_music % remove when inputting notes
  }

  notes_piccolo_two = \relative c' {
    \transposition c''
    % input notes here
    % when working with a 2nd part, set printPartCombineTexts to ##t below
  }

% Part definitions
  % Full Score Part Definition 
  part_piccolo_score = \new Staff \with {
    instrumentName = "Piccolo"
    shortInstrumentName = "Pic."
    midiInstrument = "flute" %saving midi channels for preview purposes

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \partCombine #'(1 . 0) \notes_piccolo_one \notes_piccolo_two >> }

  % Part Only Part Definition
  part_piccolo_part = \new Staff \with {
    midiInstrument = "flute" %saving midi channels for preview purposes

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \partCombine #'(1 . 0) \notes_piccolo_one \notes_piccolo_two >> }
  
% Scoring (for part only purposes)
  scoring_piccolo_part = {
    <<
      \part_piccolo_part
    >>
  }