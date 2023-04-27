%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/brass/horn.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_horn_one = \relative c' {
    \no_music % remove when inputting notes
  }

  notes_horn_two = \relative c' {
    % input notes here
    % when working with a 2nd part, set printPartCombineTexts to ##t below
  }

% Part definitions
  % Full Score Part Definition 
  part_horn_score = \new Staff \with {
    instrumentName = "Horn in F"
    shortInstrumentName = "Hn.F."
    midiInstrument = "french horn"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f  
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \partCombine #'(1 . 0) \notes_horn_one \notes_horn_two >> }

  % Part Only Part Definition
    % Concert pitch
    part_horn_part = \new Staff \with {
      midiInstrument = "french horn"

      % Set printPartCombineTexts to ##t when working with 2 parts
      printPartCombineTexts = ##f  
    } { \clef treble << \removeWithTag #'score \transpose f c' { \global } \removeWithTag #'score \partCombine #'(1 . 0) \notes_horn_one \notes_horn_two >> }

    % Transposed for instrument
    part_horn_part_transposed = \new Staff \with {
      midiInstrument = "french horn"

      % Set printPartCombineTexts to ##t when working with 2 parts
      printPartCombineTexts = ##f  
    } { \clef treble << \removeWithTag #'score \transpose f c' { \global } \removeWithTag #'score \transpose f c' { \partCombine #'(1 . 0) \notes_horn_one \notes_horn_two } >> }

% Scoring (for part only purposes)
  scoring_horn_part = {
    <<
      \part_horn_part
    >>
  }

  scoring_horn_part_transposed = {
  <<
    \part_horn_part_transposed
  >>
}