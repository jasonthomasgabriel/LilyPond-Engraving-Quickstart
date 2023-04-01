\version "2.24.1"

\language "english"

empty_part = \skip 4

global_bookpart_one = {
  \key a \major
  \time 3/4
  \skip 4
}

notes_bassoon_one_bookpart_one = \relative c' {
  cs4 f8 g8 c,4 a b cs << { c4 d4 e4 } \\ { e,4 f4 g4 } >> f,4 g,4 
}

notes_bassoon_two_bookpart_one = \relative c' {
  cs4 d8 e8 c,4 a r4 r << { c4 d4 e4 } \\ { e,4 f4 g4 } >> f,4 g,4 
}

testnotes = << { \notes_bassoon_one_bookpart_one } \\ { \notes_bassoon_two_bookpart_one } >>

part_bassoon_bookpart_one = \new Staff \with {
  instrumentName = "Bassoon"
  shortInstrumentName = "Bn."
  midiInstrument = "bassoon"
  printPartCombineTexts = ##t
} { \clef bass << \removeWithTag #'part \global_bookpart_one \removeWithTag #'part \partCombine #'(1 . 0) \notes_bassoon_one_bookpart_one \notes_bassoon_two_bookpart_one >> }

part_bassoon_one_part_bookpart_one = \new Staff \with {
  midiInstrument = "bassoon"
} { \clef bass << \removeWithTag #'score \global_bookpart_one \removeWithTag #'score \notes_bassoon_one_bookpart_one >> }

part_bassoon_two_part_bookpart_one = \new Staff \with {
  midiInstrument = "bassoon"
} { \clef bass << \removeWithTag #'score \global_bookpart_one \notes_bassoon_two_bookpart_one >> }

testpart = \new Staff { \clef bass << \global_bookpart_one \testnotes >> }

\score { \part_bassoon_bookpart_one }
\score { \testpart }
\score { \part_bassoon_one_part_bookpart_one }
\score { \removeWithTag #'score \part_bassoon_two_part_bookpart_one }
