%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/parts/instrument_library/voice/soprano.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.25.20"
\language "english"

% Insert (optional) lyrics into file below
  \include "lyrics/lyrics_soprano.ily"

% Note input 
  notes_soprano = \relative c' {
    \dynamicUp % position dynamics above the staff
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_soprano_score = \new Staff \with {
    instrumentName = "Soprano"
    shortInstrumentName = "S."
    midiInstrument = "voice oohs"
  } { \clef treble \new Voice = "soprano_voice" { << \removeWithTag #'part \global \removeWithTag #'part \notes_soprano >> } }

  % Part Only Part Definition  
  part_soprano_part = \new Staff \with {
    midiInstrument = "voice oohs"
  } { \clef treble \new Voice = "soprano_voice" { << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_soprano } >> } }

  % Attach lyrics
  part_lyrics_soprano = \new Lyrics {
    \lyricsto "soprano_voice" \lyrics_soprano
  }
  
% Scoring (for part only purposes)
  scoring_soprano_part = {
    <<
      \part_soprano_part
      \part_lyrics_soprano
    >>
  }