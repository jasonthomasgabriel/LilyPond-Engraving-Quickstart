%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/parts/instrument_library/voice/bass.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.25.20"
\language "english"

% Insert (optional) lyrics into file below
  \include "lyrics/lyrics_bass.ily"

% Note input 
  notes_bass = \relative c' {
    \dynamicUp % position dynamics above the staff
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_bass_score = \new Staff \with {
    instrumentName = "Bass"
    shortInstrumentName = "B."
    midiInstrument = "voice oohs"
  } { \clef bass \new Voice = "bass_voice" { << \removeWithTag #'part \global \removeWithTag #'part \notes_bass >> } }

  % Part Only Part Definition  
  part_bass_part = \new Staff \with {
    midiInstrument = "voice oohs"
  } { \clef bass \new Voice = "bass_voice" { << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_bass } >> } }

  % Attach lyrics
  part_lyrics_bass = \new Lyrics {
    \lyricsto "bass_voice" \lyrics_bass
  }
  
% Scoring (for part only purposes)
  scoring_bass_part = {
    <<
      \part_bass_part
      \part_lyrics_bass
    >>
  }