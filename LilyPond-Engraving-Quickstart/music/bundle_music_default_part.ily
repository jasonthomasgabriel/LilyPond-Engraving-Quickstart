%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% music/bundle_music_default_part.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"

% Indentation - set for NO instrument names
\include "../resources/indentation_no_instrumentnames.ily"

% Propriatary includes
  \include "parts/global.ily"

% Include all parts here
  \include "parts/default_part.ily"
  
% Scoring
  scoring = {
    <<
      % Remember to remove line 21 and 22
      \new FretBoards { \no_music }
      \new ChordNames \no_music
      \part_default_part
    >>
  }