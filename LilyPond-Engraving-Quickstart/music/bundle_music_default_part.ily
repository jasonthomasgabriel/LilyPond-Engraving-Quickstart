%%%% ENGRAVING QUICKSTART
%%%% music/bundle_music_default_part.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

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
      \part_default_part
    >>
  }