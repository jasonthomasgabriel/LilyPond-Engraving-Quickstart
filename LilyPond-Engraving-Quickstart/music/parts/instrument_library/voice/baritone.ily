%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/parts/instrument_library/voice/baritone.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.25.20"
\language "english"

% Insert (optional) lyrics into file below
  \include "lyrics/lyrics_baritone.ily"

% Note input 
  notes_baritone = \relative c' {
    \dynamicUp % position dynamics above the staff
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_baritone_score = \new Staff \with {
    instrumentName = "Baritone"
    shortInstrumentName = "Bar."
    midiInstrument = "voice oohs"
  } { \clef bass \new Voice = "baritone_voice" { << \removeWithTag #'part \global \removeWithTag #'part \notes_baritone >> } }

  % Part Only Part Definition  
  part_baritone_part = \new Staff \with {
    midiInstrument = "voice oohs"
  } { \clef bass \new Voice = "baritone_voice" { << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_baritone } >> } }

  % Attach lyrics
  part_lyrics_baritone = \new Lyrics {
    \lyricsto "baritone_voice" \lyrics_baritone
  }
  
% Scoring (for part only purposes)
  scoring_baritone_part = {
    <<
      \part_baritone_part
      \part_lyrics_baritone
    >>
  }