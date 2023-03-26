%%%% ENGRAVING STANDARD SONGBOOK
%%%% bookpart_1/instrument_library_bookparts/brass/horn_bookpart_1.ily
%%%% version: 3.1
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"

\bookpart {
  \header {
    % draftline       = \draftline
    % productiontitle = "Production title (and/or logo)"
    % bigsongnumber   = \markup \bigsongnumbermarkup "1"
    % revision        = "REV#1 DD-MM-YY - description of changes"
    % cue             = \markup \cueheadermarkup ""
    % dedication      = ""
    % title           = ""
    % subtitle        = ""
    % subsubtitle     = ""
    instrument        = "Horn in F" % "Part" would be an apt name, as this could easily say "full score". I could change it, but the whole point is to leave as much Lilypond's standards as possible.
    % composer        = ""
    % arranger        = ""
    % poet            = ""
    % meter           = ""
    % piece           = ""
    % opus            = ""
    % copyright       = \markup {
    %                       \center-column {
    %                         \line {\upright "<year>"} %Ab urbe condita
    %                         \with-url "<link>"
    %                         \line {\italic \smaller \right-align \sans \with-color #(rgb-color 0.251 0.251 0.251) "click here to listen to this composition" \with-color #(rgb-color 0.749 0.749 0.749) \italic \sans "(opens link to <website>)"}
    %                       }
    %                     }
    % tagline 		    = \markup { 
    %                      \with-url #"<link to license>"
    %                      \line {
    %                        "<license short version> To view a copy of this license, click here." 
    %                      }
    %                    }
    % maintainer      = ""
    % maintainerEmail = ""
  }
  
  % Optionally set staff size in \layout{}, depending on needs when dealing with multiple scores.
    \score { \transpose f c' \scoring_horn_bookpart_one \layout { %{ #(layout-set-staff-size 20) %} indent = 0\mm short-indent = 0\mm } \midi { \set Score.midiChannelMapping = #'instrument } }
  
  % Articulated MIDI score block %
    % (Purposely creates no visual output) %
    \score { \unfoldRepeats \articulate << \scoring_horn_bookpart_one >> \midi { \set Score.midiChannelMapping = #'instrument } }
}