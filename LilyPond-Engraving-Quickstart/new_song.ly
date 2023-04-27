 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Project     :                                                %
 % Owner       :                                                %
 % ------------------------------------------------------------ %
 % Start date  :                                                %
 % Last edit   :                                                %
 % ------------------------------------------------------------ %
 % License     :                                                %
 %                                                              %
 %                                                              %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%%%%%% Created using Engraving Quickstart v4.0 %%%%%%%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.24.1"

% Scores cannot be empty (when using partCombine), this variable is a spacer for all unused parts.
% For quick testing of your setup, you could replace the spacer with some music in curly brackets.
no_music = \skip 4

#(ly:set-option 'relative-includes #t)
\include "articulate.ly"

% Propriatary includes
  % Headers
    \include "resources/headerdefinitions.ily"
  
  % Paper size and margins
    \include "resources/papersize_margins.ily"
  
  % Fonts
    % Staff size needs to be set, before changing the font
    % LilyPond Standard staff size = 20. See table with recommendations for various sizes: http://lilypond.org/doc/v2.19/Documentation/notation/setting-the-staff-size
    % That said, size 15 is a nice starting point
      #(set-global-staff-size 15)
  
    % House fonts (disable when not available on your machine)
      \include "resources/housefonts.ily"
  
% Engraving includes  
  % Notation rules
    \include "resources/notationrules.ily"

% Music includes 
  % Functions and variables
    \include "music/functions_variables.ily"

  % Music
    % Choose between starting with an empty, nameless part (default) or the instrument library
      \include "music/bundle_music_default_part.ily"
      % \include "music/bundle_music_instrument_library.ily"

% Books
  % Main book
    \include "music/mainbook.ily"
    
  % Optional books for individual parts - when using the Instrument Library.
    % \include "music/parts/instrument_library/resources/books/bundle_books_instrument_library.ily"