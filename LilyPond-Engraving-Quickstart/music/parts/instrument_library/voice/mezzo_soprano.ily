%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/parts/instrument_library/voice/mezzo_soprano.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.25.20"
\language "english"

% Insert (optional) lyrics into file below
  \include "lyrics/lyrics_mezzo_soprano.ily"

% Note input 
  notes_mezzo_soprano = \relative c' {
    \dynamicUp % Position dynamics above the staff
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_mezzo_soprano_score = \new Staff \with {
    instrumentName = "Mezzo-soprano"
    shortInstrumentName = "M-S."
    midiInstrument = "voice oohs"
  } { \clef treble \new Voice = "mezzo_soprano_voice" { << \removeWithTag #'part \global \removeWithTag #'part \notes_mezzo_soprano >> } }

  % Part Only Part Definition  
  part_mezzo_soprano_part = \new Staff \with {
    midiInstrument = "voice oohs"
  } { \clef treble \new Voice = "mezzo_soprano_voice" { << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_mezzo_soprano } >> } }

  % Attach lyrics
  part_lyrics_mezzo_soprano = \new Lyrics {
    \lyricsto "mezzo_soprano_voice" \lyrics_mezzo_soprano
  }
  
% Scoring (for part only purposes)
  scoring_mezzo_soprano_part = {
    <<
      \part_mezzo_soprano_part
      \lyrics_mezzo_soprano_part
    >>
  }