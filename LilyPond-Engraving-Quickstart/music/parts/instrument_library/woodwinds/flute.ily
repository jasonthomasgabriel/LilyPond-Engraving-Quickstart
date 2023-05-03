%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/woodwinds/flute.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_flute_one = \relative c' {
    \no_music % remove when inputting notes
  }

  notes_flute_two = \relative c' {
    % input notes here
    % when working with a 2nd part, set printPartCombineTexts to ##t below
  }

% Part definitions
  % Full Score Part Definition 
  part_flute_score = \new Staff \with {
    instrumentName = "Flute"
    shortInstrumentName = "Fl."
    midiInstrument = "flute"
    
    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \partCombine #'(1 . 0) \notes_flute_one \notes_flute_two >> }

  % Part Only Part Definition
  part_flute_part = \new Staff \with {
    midiInstrument = "flute"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \partCombine #'(1 . 0) \notes_flute_one \notes_flute_two } >> }
  
% Scoring (for part only purposes)
  scoring_flute_part = {
    <<
      \part_flute_part
    >>
  }