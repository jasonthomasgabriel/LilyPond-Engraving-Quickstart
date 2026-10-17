%%%% LILYPOND ENGRAVING QUICKSTART v4.0.3
%%%% music/parts/instrument_library/woodwinds/alto_saxophone.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"
\language "english"

notes_alto_saxophone_one = \relative c' {
  \no_music
}

notes_alto_saxophone_two = \relative c' {
  % Input notes here.
}

part_alto_saxophone_score = \new Staff \with {
  instrumentName = "Alto Saxophone in E-flat"
  shortInstrumentName = "A. Sax."
  midiInstrument = "alto sax"
  printPartCombineTexts = ##f
} {
  \clef treble
  <<
    \removeWithTag #'part \global
    \removeWithTag #'part
    \partCombine #'(1 . 0) \notes_alto_saxophone_one \notes_alto_saxophone_two
  >>
}

part_alto_saxophone_part = \new Staff \with {
  midiInstrument = "alto sax"
  printPartCombineTexts = ##f
} {
  \clef treble
  <<
    \removeWithTag #'score \transpose ef c' { \global }
    \removeWithTag #'score \compressMMRests {
      \partCombine #'(1 . 0) \notes_alto_saxophone_one \notes_alto_saxophone_two
    }
  >>
}

part_alto_saxophone_part_transposed = \new Staff \with {
  midiInstrument = "alto sax"
  printPartCombineTexts = ##f
} {
  \clef treble
  <<
    \removeWithTag #'score \transpose ef c' { \global }
    \removeWithTag #'score \compressMMRests {
      \transpose ef c' {
        \partCombine #'(1 . 0) \notes_alto_saxophone_one \notes_alto_saxophone_two
      }
    }
  >>
}

scoring_alto_saxophone_part = {
  << \part_alto_saxophone_part >>
}

scoring_alto_saxophone_part_transposed = {
  << \part_alto_saxophone_part_transposed >>
}
