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
 %%%%%%% Created using LilyPond Engraving Quickstart v4.0 %%%%%%%
 %% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.25.20"

% Scores cannot be empty (when using partCombine), this variable is a spacer for all unused parts.
% For quick testing of your setup, you could replace the spacer with some music in curly brackets.
no_music = \skip 4

% A short print reference for yourself
% Only visible in print, when "statusline" is set to \draftversion or \publishedversion in headers (music/headers.ily)
fileversionreferencetracker = "ref: <your reference>"

#(ly:set-option 'relative-includes #t)
\include "articulate.ly"

% Housestyle
  % Header definitions (global headers for print are set in music/headers.ily)
    \include "resources/headerdefinitions.ily"
  
  % Paper size and margins
    \include "resources/papersize_margins.ily"
  
  % Staff size
    % LilyPond Standard staff size = 20. See table with recommendations for various sizes: http://lilypond.org/doc/v2.24/Documentation/notation/setting-the-staff-size
    % Set staff size for main book score below. Size 14 is a nice starting point
      #(set-global-staff-size 14)
      
    % Set staff size for books of individual parts - when using the Instrument Library. Size 16.8 is a nice starting point
      staffsize_parts = 16.8
  
  % Fonts
    % House fonts (disable when not available on your machine)
      \include "resources/housefonts.ily"
   
  % Notation rules
    \include "resources/notationrules.ily"

% Musical includes 
  % Functions and variables
    \include "music/functions_variables.ily"

  % Music
    % Choose between starting with an empty, nameless part (default) or the instrument library
      \include "music/bundle_music_default_part.ily"
      % \include "music/bundle_music_instrument_library.ily"

% Books
  % Main book
    \book {
      % Optional cover page (uncomment if desired)
        % \include "resources/coverpagebookpart.ily"
      % Main book
        \include "music/mainbookpart.ily"
    }
    
  % Optional books for individual parts - when using the Instrument Library.
    % \include "music/parts/instrument_library/resources/books/bundle_books_instrument_library.ily"