%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/parts/instrument_library/voice/voice_1.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.25.20"
\language "english"

% Note input 
  notes_voice_one = \relative c' {
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_voice_one_score = \new Staff \with {
    instrumentName = "Voice 1"
    shortInstrumentName = "Vox 1."
    midiInstrument = "voice oohs"
  } { \clef treble << \removeWithTag #'part \global \removeWithTag #'part \notes_voice_one >> }

  % Part Only Part Definition  
  part_voice_one_part = \new Staff \with {
    midiInstrument = "voice oohs"
  } { \clef treble << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_voice_one } >> }
  
% Scoring (for part only purposes)
  scoring_voice_one_part = {
    <<
      \part_voice_one_part
    >>
  }