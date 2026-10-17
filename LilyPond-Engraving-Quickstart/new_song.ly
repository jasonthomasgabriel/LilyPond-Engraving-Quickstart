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
 %%%%%%% Created using LilyPond Engraving Quickstart v4.0.3 %%%%%%%
 %% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.25.20"

% Scores cannot be empty (when using partCombine), these variables are a spacer for all unused parts.
% For quick testing of your setup, you could replace these spacers with some music or lyrics in curly brackets.
no_music = \skip 4
no_lyrics = \lyricmode {}

% A short print reference for yourself
% Only visible in print, when "statusline" is set to \draftversion or \publishedversion in headers (music/headers.ily)
fileversionreferencetracker = "ref: <your reference>"

#(ly:set-option 'relative-includes #t)
\include "articulate.ly"

% Start here: edit this file for score-wide choices. The included files below hold reusable defaults.

% House style
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
  % Shared functions and spacer values; normally leave these definitions in place.
    \include "music/functions_variables.ily"

  % Shared key, meter, tempo, and other score-wide musical settings:
    % Edit music/parts/global.ily.
  % Enter notes in music/parts/default_part.ily or in the selected instrument files.

  % Choose ONE music bundle: keep the blank part, or use the instrument library.
      \include "music/bundle_music_default_part.ily"
      % \include "music/bundle_music_instrument_library.ily"

      % If using the instrument library, uncomment at most ONE preset below.
      % A preset replaces the bundle's default orchestral scoring with an ensemble selection.
      % Presets select the staves; enter each instrument's notes in its part file.
      % \include "music/presets/string_quartet.ily"
      % \include "music/presets/piano_trio.ily"
      % \include "music/presets/woodwind_quintet.ily"

% Books
  % Main book
    \book {
      % Optional cover page (uncomment if desired)
        % \include "resources/coverpagebookpart.ily"
      % Main score: metadata is in music/headers.ily; instrument notes are in the selected part file.
      % Keep one main-book include enabled. Choose the second version to omit main-book MIDI.
        \include "music/mainbookpart.ily"
        % \include "music/mainbookpart_no_midi.ily"
    }
    
  % Optional individual-part books (instrument library only).
  % Uncomment the bundle to print the part books; edit its include list to select which parts.
    % \include "music/parts/instrument_library/resources/books/bundle_books_instrument_library.ily"