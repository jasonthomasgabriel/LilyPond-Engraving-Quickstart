%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/parts/instrument_library/other/chords_1.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.25.20"
\language "english"

\include "../../../../resources/notationrules_chords.ily"

% Note input 
  chordMusic = \chordmode {
    \set majorSevenSymbol = \markup { "maj7" }
    \set additionalPitchPrefix = "add"
    \set chordNameExceptions = #chExceptions
    
    \no_music % remove when inputting chords
  }

% Part definitions
  part_chordMusic = \new ChordNames \with { midiMaximumVolume = 0 } { 
    \chordMusic
  }
  
  part_chordMusic_fretboards = \new FretBoards \with { midiMaximumVolume = 0 } { 
    \chordMusic
  }
