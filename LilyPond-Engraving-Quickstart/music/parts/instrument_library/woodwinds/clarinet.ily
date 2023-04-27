%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/woodwinds/clarinet.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input
  notes_clarinet_one = \relative c' {
    \no_music % remove when inputting notes
  }

  notes_clarinet_two = \relative c' {
    % input notes here
    % when working with a 2nd part, set printPartCombineTexts to ##t below
  }

% Part definitions
  % Full Score Part Definition 
  part_clarinet_score = \new Staff \with {
    instrumentName = \markup \concat { "Clarinet in B" \super \flat }
    shortInstrumentName = \markup \concat { "Cl.B" \super { \flat } "."}
    midiInstrument = "clarinet"

    % Set printPartCombineTexts to ##t when working with 2 parts
    printPartCombineTexts = ##f  
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \partCombine #'(1 . 0) \notes_clarinet_one \notes_clarinet_two >> }

  % Part Only Part Definition
    % Concert pitch
    part_clarinet_part = \new Staff \with {
      midiInstrument = "clarinet"

      % Set printPartCombineTexts to ##t when working with 2 parts
      printPartCombineTexts = ##f  
    } { \clef treble << \removeWithTag #'score \transpose bf c' { \global } \removeWithTag #'score \partCombine #'(1 . 0) \notes_clarinet_one \notes_clarinet_two >> }

    % Transposed for instrument
    part_clarinet_part_transposed = \new Staff \with {
      midiInstrument = "clarinet"

      % Set printPartCombineTexts to ##t when working with 2 parts
      printPartCombineTexts = ##f  
    } { \clef treble << \removeWithTag #'score \transpose bf c' { \global } \removeWithTag #'score \transpose bf c' { \partCombine #'(1 . 0) \notes_clarinet_one \notes_clarinet_two } >> }


% Scoring (for part only purposes)
  scoring_clarinet_part = {
    <<
      \part_clarinet_part
    >>
  }

  scoring_clarinet_part_transposed = {
    <<
      \part_clarinet_part_transposed
    >>
  }