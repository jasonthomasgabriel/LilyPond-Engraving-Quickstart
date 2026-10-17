\version "2.25.20"

no_music = { c4 d e f | g a b c | c b a g | f e d c | }
no_lyrics = \lyricmode {}
fileversionreferencetracker = "header smoke test"

#(ly:set-option 'relative-includes #t)
\include "articulate.ly"
\include "../resources/headerdefinitions.ily"
\include "../resources/papersize_margins.ily"
#(set-global-staff-size 14)
\include "../resources/housefonts.ily"
\include "../resources/notationrules.ily"
\include "../music/functions_variables.ily"
\include "../music/bundle_music_default_part.ily"

\book {
  \header {
    statusline = \draftversion
    productiontitle = "Bella/Donna"
    bigsongnumber = \markup \bigsongnumbermarkup "1B"
    revision = "REV#1 - Header layout smoke test"
    foreword = "This foreword demonstrates the optional description space in the title block.

It supports multiple paragraphs of plain text, wrapped and justified above the dedication and title."
    cue = \markup \cueheadermarkup "Bella wears a Venetian mask at the end of the prologue"
    dedication = "For the players"
    title = "Ouverture"
    subtitle = "(Bella)"
    subsubtitle = "Header layout fixture"
    composer = "Jason Thomas Gabriel"
    arranger = "LEQ development test"
    poet = "Traditional"
    meter = "4/4"
    piece = "Opening"
    opus = "Op. 1"
    instrument = "Full score"
    tagline = \markup {
      \center-column {
        \line { \upright "Header test tagline" }
        \line { \italic \smaller "Visible on the first page footer" }
      }
    }
    copyright = \markup {
      \line { "Copyright field smoke test" }
    }
    qrcode = \markup { \qr-code #20 "https://example.org/leq-header-test" }
    maintainer = "LEQ test"
    maintainerEmail = "test@example.org"
  }

  \bookpart {
    \paper {
      bookpart-level-page-numbering = ##t
      \include "../resources/headerderdefinitions_extension_coverpage.ily"
    }
    \header {
      \include "../music/headers.ily"
    }
    \markup {
      \column {
        \vspace #4
        \line { \bold \larger "Synopsis" }
        \vspace #1
        \line {
          \override #'(line-width . 110)
          \justify {
            Bella returns to the stage after the opening scene, still hidden behind
            a Venetian mask. As the overture unfolds, familiar voices and distant
            memories draw her back toward the life she left behind.
          }
        }
        \vspace #2
        \line {
          \override #'(line-width . 110)
          \justify {
            This sample cover-page text demonstrates how a short description can
            occupy the open space below the title and credits. Replace it with a
            synopsis, dedication, or other introductory material as needed.
          }
        }
      }
    }
  }
  \bookpart {
    \header {
      \include "../music/headers.ily"
    }
    \score {
      \scoring
      \layout { }
      \midi { }
    }
  }
}
