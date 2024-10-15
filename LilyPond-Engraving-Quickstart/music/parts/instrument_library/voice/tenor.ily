%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/parts/instrument_library/voice/tenor.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.25.20"
\language "english"

% Insert (optional) lyrics into file below
  \include "lyrics/lyrics_tenor.ily"

% Note input 
  notes_tenor = \relative c' {
    \dynamicUp % Position dynamics above the staff
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_tenor_score = \new Staff \with {
    instrumentName = "Tenor"
    shortInstrumentName = "T."
    midiInstrument = "voice oohs"
  } { \clef "treble_8" \new Voice = "tenor_voice" { << \removeWithTag #'part \global \removeWithTag #'part \notes_tenor >> } }

  % Part Only Part Definition  
  part_tenor_part = \new Staff \with {
    midiInstrument = "voice oohs"
  } { \clef "treble_8" \new Voice = "tenor_voice" { << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_tenor } >> } }

  % Attach lyrics
  part_lyrics_tenor = \new Lyrics {
    \lyricsto "tenor_voice" \lyrics_tenor
  }
  
% Scoring (for part only purposes)
  scoring_tenor_part = {
    <<
      \part_tenor_part
      \lyrics_tenor_part
    >>
  }