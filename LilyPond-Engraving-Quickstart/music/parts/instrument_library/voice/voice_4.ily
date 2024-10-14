%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/parts/instrument_library/voice/voice_4.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.25.20"
\language "english"

% Note input 
  notes_voice_four = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_voice_four_score = \new Staff \with {
    instrumentName = "Voice 4"
    shortInstrumentName = "Vox 4."
    midiInstrument = "voice oohs"
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_voice_four >> }

  % Part Only Part Definition  
  part_voice_four_part = \new Staff \with {
    midiInstrument = "voice oohs"
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_voice_four } >> }
  
% Scoring (for part only purposes)
  scoring_voice_four_part = {
    <<
      \part_voice_four_part
    >>
  }