%%%% ENGRAVING STANDARD SONGBOOK
%%%% book.ly
%%%% version: 3.1
%%%% Author: Jason Thomas Gabriel

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Project     :                                                %
 % ------------------------------------------------------------ %
 % Start date  :                                                %
 % Last edit   :                                                %
 % ------------------------------------------------------------ %
 % Description :                                                %
 %                                                              %
 %                                                              %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.24.1"

#(ly:set-option 'relative-includes #t)

\include "articulate.ly"

% Propriatary includes
  \include "_engraving_standards/_functions_variables/_WITH_bookpartheadermarkup.ily"
  \include "_engraving_standards/_paper/_bookpaper/_papersize_A4.ily"
  \include "_engraving_standards/_paper/_bookpaper/_margins.ily"
  \include "_engraving_standards/_paper/_bookpartpaper/_bookpartheadermarkup.ily"
  
  % Staff size needs to be set, before changing the font
  % Standard staff size = 20, explicitly stated for "house font"-scaling. See table with recommendations for various sizes: http://lilypond.org/doc/v2.19/Documentation/notation/setting-the-staff-size
    #(set-global-staff-size 20)

  \include "_engraving_standards/_paper/_house_fonts/_sourceprofamily.ily"
  \include "_engraving_standards/_layout/_notation_rules.ily"

  % Choose required indentation
    \include "_engraving_standards/_layout/_indentation_one_part.ily"
    % \include "_engraving_standards/_layout/_indentation_multipart.ily"

% Include all Bookpart_[n]_/_includes-files here, as no variables can be defined inside a book block :(.
  \include "Bookpart_1/_includes/_functions_variables_bookpart_1.ily"

  % Choose between starting with an empty, nameless part (default) or the instrument library
    \include "Bookpart_1/_includes/_music_default_part_bookpart_1.ily"
    % \include "Bookpart_1/_includes/_music_instrument_library_bookpart_1.ily"

\book {
  % Include all bookparts here
    \include "Bookpart_1/coverpage_bookpart_1.ily" % If a bookpart is empty, LilyPond ignores it. So, it can be left uncommented.
    \include "Bookpart_1/bookpart_1.ily"
}