%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/parts/instrument_library/voice/alto.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.25.20"
\language "english"

% Insert (optional) lyrics into file below
  \include "lyrics/lyrics_alto.ily"

% Note input 
  notes_alto = \relative c' {
    \dynamicUp % position dynamics above the staff
    \no_music % remove when inputting notes
  }

% Part definitions
  % Full Score Part Definition 
  part_alto_score = \new Staff \with {
    instrumentName = "Alto"
    shortInstrumentName = "A."
    midiInstrument = "voice oohs"
  } { \clef treble \new Voice = "alto_voice" { << \removeWithTag #'part \global \removeWithTag #'part \notes_alto >> } }

  % Part Only Part Definition  
  part_alto_part = \new Staff \with {
    midiInstrument = "voice oohs"
  } { \clef treble \new Voice = "alto_voice" { << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_alto } >> } }

  % Attach lyrics
  part_lyrics_alto = \new Lyrics {
    \lyricsto "alto_voice" \lyrics_alto
  }
  
% Scoring (for part only purposes)
  scoring_alto_part = {
    <<
      \part_alto_part
      \part_lyrics_alto
    >>
  }