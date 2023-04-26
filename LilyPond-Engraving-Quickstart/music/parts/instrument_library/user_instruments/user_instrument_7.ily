%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/user_instruments/user_instrument_7.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input 
  notes_user_instrument_seven = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_user_instrument_seven_score = \new Staff \with {
    instrumentName = \user_instrument_seven_instrumentname
    shortInstrumentName = \user_instrument_seven_shortinstrumentname
    % midiInstrument = ""
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_user_instrument_seven >> }

  % Part Only Part Definition  
  part_user_instrument_seven_part = \new Staff \with {
    % midiInstrument = ""
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_user_instrument_seven >> }
  
% Scoring (for part only purposes)
  scoring_user_instrument_seven_part = {
    <<
      \part_user_instrument_seven_part
    >>
  }