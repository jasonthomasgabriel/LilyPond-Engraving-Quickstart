%%%% ENGRAVING STANDARD SONGBOOK
%%%% book.ly
%%%% version: 3.1.1
%%%% Author: Jason Thomas Gabriel

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Project     :                                                %
 % ------------------------------------------------------------ %
 % Start date  :                                                %
 % Last edit   :                                                %
 % ------------------------------------------------------------ %
 % License     :                                                %
 %                                                              %
 %                                                              %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.24.1"

% Scores cannot be empty, this variable is a spacer for all unused parts.
% For quick testing of your setup, you could replace the spacer with some music in curly brackets.
no_music = \skip 4

#(ly:set-option 'relative-includes #t)
\include "articulate.ly"

% Propriatary includes
  \include "_engraving_standards/_functions_variables/_WITH_bookpartheadermarkup.ily"
  \include "_engraving_standards/_paper/_bookpaper/_papersize_A4.ily"
  \include "_engraving_standards/_paper/_bookpaper/_margins.ily"
  \include "_engraving_standards/_paper/_bookpartpaper/_bookpartheadermarkup.ily"
  
  % Staff size needs to be set, before changing the font
  % Standard staff size = 20, explicitly stated for "house font"-scaling. See table with recommendations for various sizes: http://lilypond.org/doc/v2.19/Documentation/notation/setting-the-staff-size
  % That said, size 15 is a nice starting point
    #(set-global-staff-size 15)

  \include "_engraving_standards/_paper/_house_fonts/_sourceprofamily.ily"
  \include "_engraving_standards/_layout/_notation_rules.ily"

  % Choose required indentation for displaying or not displaying instrument names on the left of the Staff.
    \include "_engraving_standards/_layout/_indentation_no_instrument_names.ily"
    % \include "_engraving_standards/_layout/_indentation_with_instrument_names.ily"

% Include all Bookpart_[n]_/_includes-files here, as no variables can be defined inside a book block :(.
  \include "Bookpart_1/_includes/_functions_variables_bookpart_1.ily"

  % Choose between starting with an empty, nameless part (default) or the instrument library
    \include "Bookpart_1/_includes/_music_default_part_bookpart_1.ily"
    % \include "Bookpart_1/_includes/_music_instrument_library_bookpart_1.ily"

\book {
  % Include all bookparts here
    \include "Bookpart_1/coverpage_bookpart_1.ily" % If a bookpart is empty, LilyPond ignores it. So, it can be left uncommented.
    \include "Bookpart_1/bookpart_1.ily"
    
    % Uncomment below if you wish to ALSO print the individual parts when using the instrument library
      % \include "bookpart_1/instrument_library_bookparts/bundle_parts_bookpart_1.ily"
}