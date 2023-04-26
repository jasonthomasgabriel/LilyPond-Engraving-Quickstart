%%%% ENGRAVING QUICKSTART
%%%% music/parts/instrument_library/user_instruments/user_instrument_6.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"
\language "english"

% Note input 
  notes_user_instrument_six = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_user_instrument_six_score = \new Staff \with {
    instrumentName = \user_instrument_six_instrumentname
    shortInstrumentName = \user_instrument_six_shortinstrumentname
    % midiInstrument = ""
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_user_instrument_six >> }

  % Part Only Part Definition  
  part_user_instrument_six_part = \new Staff \with {
    % midiInstrument = ""
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \notes_user_instrument_six >> }
  
% Scoring (for part only purposes)
  scoring_user_instrument_six_part = {
    <<
      \part_user_instrument_six_part
    >>
  }