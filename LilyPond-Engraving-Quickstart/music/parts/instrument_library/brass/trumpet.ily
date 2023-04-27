%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/brass/trumpet.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_trumpet_one = \relative c' {
    \no_music % remove when inputting notes
  }

  notes_trumpet_two = \relative c' {
    % input notes here
    % when working with a 2nd part, set printPartCombineTexts to ##t below
  }

% Part definitions
  % Full Score Part Definition 
  part_trumpet_score = \new Staff \with {
    instrumentName = \markup \concat { "Trumpet in B" \super \flat }
    shortInstrumentName = \markup \concat { "Tr.B" \super { \flat } "." }
    midiInstrument = "trumpet"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f  
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \partCombine #'(1 . 0) \notes_trumpet_one \notes_trumpet_two >> }

  % Part Only Part Definition
    % Concert pitch
    part_trumpet_part = \new Staff \with {
      midiInstrument = "trumpet"

      % Set printPartCombineTexts to ##t when working with 2 parts
      printPartCombineTexts = ##f  
    } { \clef treble << \removeWithTag #'score \transpose bf c' { \global } \removeWithTag #'score \partCombine #'(1 . 0) \notes_trumpet_one \notes_trumpet_two >> }
    
    % Transposed for instrument
    part_trumpet_part_transposed = \new Staff \with {
      midiInstrument = "trumpet"

      % Set printPartCombineTexts to ##t when working with 2 parts
      printPartCombineTexts = ##f  
    } { \clef treble << \removeWithTag #'score \transpose bf c' { \global } \removeWithTag #'score \transpose bf c' { \partCombine #'(1 . 0) \notes_trumpet_one \notes_trumpet_two } >> }
    
% Scoring (for part only purposes)
  scoring_trumpet_part = {
    <<
      \part_trumpet_part
    >>
  }

  scoring_trumpet_part_transposed = {
    <<
      \part_trumpet_part_transposed
    >>
  }