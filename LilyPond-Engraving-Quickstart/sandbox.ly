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

\version "2.24.1"

% Scores cannot be empty (when using partCombine), this variable is a spacer for all unused parts.
% For quick testing of your setup, you could replace the spacer with some music in curly brackets.

\language "english"

\include "predefined-guitar-fretboards.ly"

chExceptionMusic = {
  <c ef gf>1-\markup { "m" \hspace #0.3 \super { \flat "5" } } % I know "dim" is fine, but then what do you do with the ambiguity of dim7? So let's be consistently explicit
  <c ef gf bff>1-\markup { "m" \hspace #0.3 \super { \flat "5" } \hspace #0.3 \super { \flat "7" } }
  <c ef gf bf>1-\markup { "m" \super "7" \hspace #0.3 \super { \flat "5" } }
  <c ef gf bf d'>1-\markup { "m" \super "9" \hspace #0.3 \super { \flat "5" } }
  <c e g bf d' fs'>1-\markup { \super "9" \hspace #0.3 \super { \sharp "11" } }
  <c e g bf d' f' af'>1-\markup { \super "11" \hspace #0.3 \super { \flat "13" } }
  <c e g b d'>1-\markup { \super "maj9" }
  <c e g b d' f' a'>1-\markup { \super "maj13" }
  <c e g b d' fs'>1-\markup { \super "maj9" \hspace #0.3 \super { \sharp "11" } }
}

\language "nederlands"

% Convert music to list and prepend to existing exceptions.
chExceptions = #(append
  (sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)

% no_music = \transpose c' c'' {
%   \set majorSevenSymbol = \markup { "maj7" }
%   \set additionalPitchPrefix = "add"
%   \set chordNameExceptions = #chExceptions
%   <c e g>1
%   <c es g>  % m = minor triad
%   <c e gis>
%   <c es ges> \break
%   <c e g bes>
%   <c es g bes>
%   <c e g b>  % triangle = maj
%   <c es ges beses>
%   <c es ges b> \break
%   <c e gis bes>
%   <c es g b>
%   <c e gis b>
%   <c es ges bes> \break
%   <c e g a>  % 6 = major triad with added sixth
%   <c es g a>  % m6 = minor triad with added sixth
%   <c e g bes d'>
%   <c es g bes d'> \break
%   <c es g bes d' f' a' >
%   <c es g bes d' f' >
%   <c es ges bes d' >
%   <c e g bes des' > \break
%   <c e g bes dis'>
%   <c e g bes d' f'>
%   <c e g bes d' fis'>
%   <c e g bes d' f' a'> \break
%   <c e g bes d' fis' as'>
%   <c e gis bes dis'>
%   <c e g bes dis' fis'>
%   <c e g bes d' f' as'> \break
%   <c e g bes des' f' as'>
%   <c e g bes d' fis'>
%   <c e g b d'>
%   <c e g bes d' f' as'> \break
%   <c e g bes des' f' as'>
%   <c e g bes des' f' a'>
%   <c e g b d'>
%   <c e g b d' f' a'> \break
%   <c e g b d' fis'>
%   <c e g bes des' f ' a'>
%   <c f g>
%   <c f g bes> \break
%   <c f g bes d'>
%   <c e g d'>  % add9
%   <c es g f'>
%   <c e g b fis'>  % Lydian
%   <c e g bes des' ees' fis' aes'>  % altered chord
% }

no_music = \chordmode {
  \set majorSevenSymbol = \markup { "maj7" }
  \set additionalPitchPrefix = "add"
  \set chordNameExceptions = #chExceptions
 c1
 a:1.3.5.9
 b:1.3-.5.7
}

% A short print reference for yourself
% Only visible in print, when "statusline" is set to \draftversion or \publishedversion in headers
fileversionreferencetracker = "ref: <your reference>"

#(ly:set-option 'relative-includes #t)
\include "articulate.ly"

% Propriatary includes
  % Headers
    \include "resources/headerdefinitions.ily"
  
  % Paper size and margins
    \include "resources/papersize_margins.ily"
  
  % Fonts
    % Staff size needs to be set, before changing the font
    % LilyPond Standard staff size = 20. See table with recommendations for various sizes: http://lilypond.org/doc/v2.24/Documentation/notation/setting-the-staff-size
    % That said, size 14 is a nice starting point
      #(set-global-staff-size 17)
  
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
    \book {
      % Optional cover page (uncomment if desired)
        % \include "resources/coverpagebookpart.ily"
      % Main book
        \include "music/mainbookpart.ily"
    }
    
  % Optional books for individual parts - when using the Instrument Library.
    % \include "music/parts/instrument_library/resources/books/bundle_books_instrument_library.ily"