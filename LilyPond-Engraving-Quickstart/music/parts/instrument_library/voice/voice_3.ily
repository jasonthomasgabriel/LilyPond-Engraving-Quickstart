%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/parts/instrument_library/voice/voice_3.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.25.20"
\language "english"

% Note input 
  notes_voice_three = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_voice_three_score = \new Staff \with {
    instrumentName = "Voice 3"
    shortInstrumentName = "Vox 3."
    midiInstrument = "voice oohs"
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_voice_three >> }

  % Part Only Part Definition  
  part_voice_three_part = \new Staff \with {
    midiInstrument = "voice oohs"
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_voice_three } >> }
  
% Scoring (for part only purposes)
  scoring_voice_three_part = {
    <<
      \part_voice_three_part
    >>
  }