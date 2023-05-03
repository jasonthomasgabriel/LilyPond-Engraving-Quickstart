%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% music/coverpagebookpart.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"

\bookpart {
  \paper {
    % Prevent coverpage from taking up a page number
    bookpart-level-page-numbering = ##t

    % A modified set of the header definitions with non-scalable font sizes, so the coverpage will always look the same
    \include "headerderdefinitions_extension_coverpage.ily"
  }

  \header {
    % Headers are centralised (to make things easier when dealing with multiple parts).
    % If needed a header can be overwritten by restating below the include-file.
    \include "../music/headers.ily"

    % Set the instrument and/or part name below
    % instrument = ""
  }

  % Space for optional text and/or illustrations.
  % Empty bookparts are omitted, the empty space below is to force visibility.
  \markup {" "}

}

% If a blank spage is required for pageturn optimalisation, uncomment below.
% \bookpart {
%   \header {
%     tagline = "(Page left blank intentionally)"
%   }
%   
%   % Empty bookparts are omitted, the empty space below is to force visibility.
%   \markup {" "}
%   
% }