%%%% ENGRAVING STANDARD SONGBOOK
%%%% Bookpart_1/Scores/instrument_library/score_all_parts.ily
%%%% version: 3.1.2
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"

\include "bundle_scores_all_parts.ily"

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

    % user instruments
    % Place these where appropriate for your score 
    % \part_user_instrument_one_part_bookpart_one
    % \part_user_instrument_two_part_bookpart_one
    % \part_user_instrument_three_part_bookpart_one
    % \part_user_instrument_four_part_bookpart_one
    % \part_user_instrument_five_part_bookpart_one
    % \part_user_instrument_six_part_bookpart_one
    % \part_user_instrument_seven_part_bookpart_one
    % \part_user_instrument_eight_part_bookpart_one
    % \part_user_instrument_nine_part_bookpart_one
    % \part_user_instrument_ten_part_bookpart_one
  >>
}