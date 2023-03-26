%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Scores/full_score.ily
%%%% version: 3.1
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"

scoring_bookpart_one = {
  <<
    \new StaffGroup = "woodwinds" <<
      \part_piccolo_bookpart_one
      \part_flute_bookpart_one
      \part_oboe_bookpart_one
      \part_clarinet_bookpart_one
      \part_bassoon_bookpart_one
    >>
    
    \new StaffGroup = "brass" <<
      \part_horn_bookpart_one
      \part_trumpet_bookpart_one
      \part_trombone_bookpart_one
      \part_tuba_bookpart_one
    >>
    
    \new StaffGroup = "unpitched percussion" <<
      \part_cymbals_bookpart_one
      \part_bassdrum_bookpart_one
    >>
    
    \new StaffGroup = "pitched percussion" <<
      \part_crotales_bookpart_one
      \part_glockenspiel_bookpart_one
      \part_soprano_metallophone_bookpart_one
    >>
    
    \part_harp_bookpart_one
    \part_piano_bookpart_one
    \part_guitar_bookpart_one
    
    \new StaffGroup = "strings" <<
      \part_violin_I_bookpart_one
      \part_violin_II_bookpart_one
      \part_viola_bookpart_one
      \part_violoncello_bookpart_one
      \part_contrabass_bookpart_one
    >>
  >>
}