%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/parts/instrument_library/voice/voice_2.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.25.20"
\language "english"

% Note input 
  notes_voice_two = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_voice_two_score = \new Staff \with {
    instrumentName = "Voice 2"
    shortInstrumentName = "Vox 2."
    midiInstrument = "voice oohs"
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_voice_two >> }

  % Part Only Part Definition  
  part_voice_two_part = \new Staff \with {
    midiInstrument = "voice oohs"
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_voice_two } >> }
  
% Scoring (for part only purposes)
  scoring_voice_two_part = {
    <<
      \part_voice_two_part
    >>
  }