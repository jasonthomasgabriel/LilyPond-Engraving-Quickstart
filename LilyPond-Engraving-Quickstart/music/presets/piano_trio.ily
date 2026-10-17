%%%% LILYPOND ENGRAVING QUICKSTART v4.0.3
%%%% music/presets/piano_trio.ily
%%%% -----------------------------------------------------------

\version "2.24.1"

scoring = {
  <<
    \part_piano_score
    \new StaffGroup = "strings" <<
      \part_violin_I_score
      \part_violoncello_score
    >>
  >>
}
