%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% music/parts/instrument_library/user_instruments/user_instrument_4.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"
\language "english"

% Note input 
  notes_user_instrument_four = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_user_instrument_four_score = \new Staff \with {
    instrumentName = \user_instrument_four_instrumentname
    shortInstrumentName = \user_instrument_four_shortinstrumentname
    % midiInstrument = ""
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_user_instrument_four >> }

  % Part Only Part Definition  
  part_user_instrument_four_part = \new Staff \with {
    % midiInstrument = ""
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_user_instrument_four } >> }
  
% Scoring (for part only purposes)
  scoring_user_instrument_four_part = {
    <<
      \part_user_instrument_four_part
    >>
  }