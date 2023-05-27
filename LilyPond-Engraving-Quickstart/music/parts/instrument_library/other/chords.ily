%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% music/parts/instrument_library/other/chords_1.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"
\language "english"

% Some standards for chords
  \include "predefined-guitar-fretboards.ly"
  
  \language "english"
  
  chExceptionMusic = {
    <c ef gf>1-\markup { "m" \hspace #0.3 \super { \flat "5" } } % I know "dim" is fine, but then what do you do with the ambiguity of dim7? So let's be consistently explicit
    <c ef gf bff>1-\markup { "m" \hspace #0.3 \super { \flat "5" } \hspace #0.3 \super { \flat "7" } }
    <c ef gf bf>1-\markup { "m" \super "7" \hspace #0.3 \super { \flat "5" } }
    <c ef gf bf d'>1-\markup { "m" \super "9" \hspace #0.3 \super { \flat "5" } }
    <c e g bf d' fs'>1-\markup { \super "9" \hspace #0.3 \super { \sharp "11" } }
    <c e g bf d' f' af'>1-\markup { \super "11" \hspace #0.3 \super { \flat "13" } }
    <c e g b d'>1-\markup { \super "maj9" }
    <c e g b d' f' a'>1-\markup { \super "maj13" }
    <c e g b d' fs'>1-\markup { \super "maj9" \hspace #0.3 \super { \sharp "11" } }
  }
  
  chExceptions = #(append
    (sequential-music-to-chord-exceptions chExceptionMusic #t)
    ignatzekExceptions)

% Note input 
  chordMusic = \relative c' {
    \set majorSevenSymbol = \markup { "maj7" }
    \set additionalPitchPrefix = "add"
    \set chordNameExceptions = #chExceptions
    
    \no_music % remove when inputting chords
  }

% Part definitions
  part_chordMusic_fretboards = \new FretBoards { 
    \chordMusic
  }
  part_chordMusic = \new ChordNames { 
    \chordMusic
  }
