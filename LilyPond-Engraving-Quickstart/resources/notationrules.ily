%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% resources/notationrules.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"

\layout {
  \numericTimeSignature
  \accidentalStyle modern-cautionary

  \set Score.rehearsalMarkFormatter = #format-mark-box-barnumbers

  \override Staff.InstrumentName.self-alignment-X = #RIGHT
  \override Staff.InstrumentName.padding = 0.6\mm
  \override PianoStaff.InstrumentName.self-alignment-X = #RIGHT
  \override PianoStaff.InstrumentName.padding = 0.6\mm

  \override Score.MetronomeMark.Y-offset = 4\mm
  \override Score.RehearsalMark.Y-offset = 4\mm
  \override Score.ChordName.font-family = #'serif
  
  \override Score.DynamicTextSpanner.font-size = #-0.5
  \override Score.TextSpanner.font-size = #-0.5
  
  % If you want to see barnumbers on every bar for editorial purposes
  % \override Score.BarNumber.break-visibility = ##(#t #t #t)

  \context {
    \Voice
    \consists "Melody_engraver"
    % \consists "Ambitus_engraver" %Out of curiousity, I sometimes use this to check what range I use per instrument.
  }

  \context {
    \Score
    \override LyricText.font-size = #-1
  }
}

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