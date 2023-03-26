%%%% ENGRAVING STANDARD SONGBOOK
%%%% _engraving_standards/_functions_variables/_WITH_bookpartheadermarkup.ily
%%%% version: 3.1
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"

% Engraving Standard file version number. 
ESF_version = "ESF v3.1"

fileversionreferencetracker = "ref 0#0"
currentDate = #(strftime "%H:%M:%S - %d-%m-%Y" (localtime (current-time)))
lilypondVersion = #(lilypond-version)

% To keep the actual header clean, the markup for the draftline (which I guess is now two lines) is done here.
draftline = \markup {
  \column {
    \fill-line{
      {\null}
      \combine
      \with-color #red \filled-box #'(-1 . 11.6) #'(-0.6 . 1.3) #0.6
      \with-color #white \concat { "DRAFT VERSION" }
    }
    \fill-line{
      {\null}
      \concat \caps { \fileversionreferencetracker " / " \currentDate " / " \lilypondVersion " / "  \ESF_version }
    }
  }
}

bigsongnumbermarkup = #(define-markup-command (bigsongnumbermarkup layout props arg)
                         (markup?)
                         (interpret-markup layout props
                         #{ \markup { 
                              \box \pad-markup #1 
                              {\larger \larger \larger \larger \larger \larger \larger \larger \larger \bold #arg }
                            } 
                         #}))

cueheadermarkup = #(define-markup-command (cueheadermarkup layout props arg)
                     (markup?)
                     (interpret-markup layout props
                       #{ \markup {
                            \concat \italic { \bold {"cue: "} #arg }
                          }
                       #}))