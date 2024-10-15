%%%% LILYPOND ENGRAVING QUICKSTART v4.0.2
%%%% music/parts/instrument_library/resources/books/bundle_books_instrument_library.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.25.9"

% Staff size for parts
  % (defined in main ly file (new_song.ly))
    #(set-global-staff-size staffsize_parts)
  
  % Costom fonts no longer need to be restated after changing the staff size, yay!

% Include all books you wish to print here
  \include "woodwinds/book_piccolo.ily"
  \include "woodwinds/book_flute.ily"
  \include "woodwinds/book_oboe.ily"
  \include "woodwinds/book_clarinet.ily"
  \include "woodwinds/book_bassoon.ily"
  
  \include "brass/book_horn.ily"
  \include "brass/book_trumpet.ily"
  \include "brass/book_trombone.ily"
  \include "brass/book_tuba.ily"
  
  \include "unpitched_percussion/book_cymbals.ily"
  \include "unpitched_percussion/book_bassdrum.ily"
  
  \include "pitched_percussion/book_crotales.ily"
  \include "pitched_percussion/book_glockenspiel.ily"
  \include "pitched_percussion/book_soprano_metallophone.ily"
  
  \include "unsorted/book_harp.ily"
  \include "unsorted/book_piano.ily"
  \include "unsorted/book_guitar.ily"

  \include "voice/book_soprano.ily"
  \include "voice/book_mezzo_soprano.ily"
  \include "voice/book_alto.ily"
  \include "voice/book_tenor.ily"
  \include "voice/book_baritone.ily"
  \include "voice/book_bass.ily"
  
  \include "strings/book_violin_I.ily"
  \include "strings/book_violin_II.ily"
  \include "strings/book_viola.ily"
  \include "strings/book_violoncello.ily"
  \include "strings/book_contrabass.ily"
  
  % User Instruments
    % uncomment where appropriate for your purposes
      % \include "user_instruments/book_user_instrument_one.ily"
      % \include "user_instruments/book_user_instrument_two.ily"
      % \include "user_instruments/book_user_instrument_three.ily"
      % \include "user_instruments/book_user_instrument_four.ily"
      % \include "user_instruments/book_user_instrument_five.ily"
      % \include "user_instruments/book_user_instrument_six.ily"
      % \include "user_instruments/book_user_instrument_seven.ily"
      % \include "user_instruments/book_user_instrument_eight.ily"
      % \include "user_instruments/book_user_instrument_nine.ily"
      % \include "user_instruments/book_user_instrument_ten.ily"