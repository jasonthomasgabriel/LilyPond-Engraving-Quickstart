%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% resources/headerderdefinitions_extension_coverpage.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"

bookTitleMarkup = \markup {
  \column {
    \fill-line {
      {\null}
      {\null}
      \abs-fontsize #7 \typewriter \bold \fromproperty #'header:statusline
    }
    \vspace #10
    \fill-line \abs-fontsize #8 {
      {\null}
      {\null}
      { \concat { \italic { \fromproperty #'header:productiontitle \hspace #1 } \fromproperty #'header:bigsongnumber }}
    }
    \fill-line \abs-fontsize #8 { \italic \fromproperty #'header:dedication }
    \vspace #0.1 % That's a little close, but I quite like the dedication to rest on the title very snugly.
    \column {
      \fill-line{
        \abs-fontsize #35 \bold \caps \fromproperty #'header:title
      }
      \fill-line {
        \abs-fontsize #15
        \bold \caps
        \fromproperty #'header:subtitle
      }
      \fill-line {
        \abs-fontsize #10 \italic
        \fromproperty #'header:subsubtitle
      }
      \vspace #1
      \fill-line {
        \abs-fontsize #8 \sans \italic
        \fromproperty #'header:revision
      }
      \vspace #0.75
      \fill-line \abs-fontsize #10 {
        { \fromproperty #'header:poet }
        { \dash \caps \fromproperty #'header:instrument }
        { \fromproperty #'header:composer }
      }
      \fill-line \abs-fontsize #10 {
        { \fromproperty #'header:meter }
        { \fromproperty #'header:arranger }
      }
    }
  }
}

oddFooterMarkup = \markup {
  \column {
    \fill-line {
      \abs-fontsize #7
      \fromproperty #'header:tagline
    }
    \vspace #1.5
    \fill-line {
      \abs-fontsize #6
      \fromproperty #'header:copyright
    }
  }
}