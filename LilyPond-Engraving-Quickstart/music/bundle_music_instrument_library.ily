%%%% ENGRAVING QUICKSTART
%%%% music/bundle_music_instrument_library.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"

% Indentation - set for WITH instrument names
  \include "../resources/indentation_with_instrumentnames.ily"

% User Instrument names
  % Set instrument names for the user instruments in the file below
  % music/parts/instrument_library/resources/user_instrument_names.ily
  \include "parts/instrument_library/resources/user_instrument_names.ily"
  

% Propriatary includes
  \include "parts/global.ily"
  
% Include all parts here
  \include "parts/instrument_library/woodwinds/piccolo.ily"
  \include "parts/instrument_library/woodwinds/flute.ily"
  \include "parts/instrument_library/woodwinds/oboe.ily"
  \include "parts/instrument_library/woodwinds/clarinet.ily"
  \include "parts/instrument_library/woodwinds/bassoon.ily"
  
  \include "parts/instrument_library/brass/horn.ily"
  \include "parts/instrument_library/brass/trumpet.ily"
  \include "parts/instrument_library/brass/trombone.ily"
  \include "parts/instrument_library/brass/tuba.ily"
  
  \include "parts/instrument_library/unpitched_percussion/cymbals.ily"
  \include "parts/instrument_library/unpitched_percussion/bassdrum.ily"
  
  \include "parts/instrument_library/pitched_percussion/crotales.ily"
  \include "parts/instrument_library/pitched_percussion/glockenspiel.ily"
  \include "parts/instrument_library/pitched_percussion/soprano_metallophone.ily"
  
  \include "parts/instrument_library/unsorted/harp.ily"
  \include "parts/instrument_library/unsorted/piano.ily"
  \include "parts/instrument_library/unsorted/guitar.ily"
  
  \include "parts/instrument_library/strings/violin_I.ily"
  \include "parts/instrument_library/strings/violin_II.ily"
  \include "parts/instrument_library/strings/viola.ily"
  \include "parts/instrument_library/strings/violoncello.ily"
  \include "parts/instrument_library/strings/contrabass.ily"
  
  \include "parts/instrument_library/user_instruments/user_instrument_1.ily"
  \include "parts/instrument_library/user_instruments/user_instrument_2.ily"
  \include "parts/instrument_library/user_instruments/user_instrument_3.ily"
  \include "parts/instrument_library/user_instruments/user_instrument_4.ily"
  \include "parts/instrument_library/user_instruments/user_instrument_5.ily"
  \include "parts/instrument_library/user_instruments/user_instrument_6.ily"
  \include "parts/instrument_library/user_instruments/user_instrument_7.ily"
  \include "parts/instrument_library/user_instruments/user_instrument_8.ily"
  \include "parts/instrument_library/user_instruments/user_instrument_9.ily"
  \include "parts/instrument_library/user_instruments/user_instrument_10.ily"
  
% Scoring
  scoring = {
    <<
      \new StaffGroup = "woodwinds" <<
        \part_piccolo_score
        \part_flute_score
        \part_oboe_score
        \part_clarinet_score
        \part_bassoon_score
      >>
      
      \new StaffGroup = "brass" <<
        \part_horn_score
        \part_trumpet_score
        \part_trombone_score
        \part_tuba_score
      >>
      
      \new StaffGroup = "unpitched percussion" <<
        \part_cymbals_score
        \part_bassdrum_score
      >>
      
      \new StaffGroup = "pitched percussion" <<
        \part_crotales_score
        \part_glockenspiel_score
        \part_soprano_metallophone_score
      >>
      
      \part_harp_score
      \part_piano_score
      \part_guitar_score
      
      \new StaffGroup = "strings" <<
        \part_violin_I_score
        \part_violin_II_score
        \part_viola_score
        \part_violoncello_score
        \part_contrabass_score
      >>
  
      % User Instruments
        % Place these where appropriate for your score 
          % \part_user_instrument_one_score
          % \part_user_instrument_two_score
          % \part_user_instrument_three_score
          % \part_user_instrument_four_score
          % \part_user_instrument_five_score
          % \part_user_instrument_six_score
          % \part_user_instrument_seven_score
          % \part_user_instrument_eight_score
          % \part_user_instrument_nine_score
          % \part_user_instrument_ten_score
    >>
  }