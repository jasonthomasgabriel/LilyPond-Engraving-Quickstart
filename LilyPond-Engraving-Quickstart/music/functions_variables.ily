%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% music/functions_variables.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"

% Remove text and dynamics from a musical expression (to use with partCombine)
% Code modified from mailing list: https://www.mail-archive.com/lilypond-user@gnu.org/msg145946.html - Aaron Hill
removeText_Dynamics = #(define-music-function (music) (ly:music?)
                    (define ((is-not type) music)
                      (not (music-is-of-type? music type)))
                    (music-filter (is-not 'dynamic-event) music)
                    (music-filter (is-not 'span-dynamic-event) music)
                    (music-filter (is-not 'text-script-event) music))

% Dynamic symbol + "molto espressivo" 
  dynamic_molto_espressivo = #(define-event-function (parser location dynamicMark)
                              (ly:event?)
                              (make-dynamic-script #{
                              \markup {
                                  \concat {
                                  \dynamic #(ly:music-property dynamicMark 'text)
                                  \hspace #0.5
                                  \normal-text \italic "molto espress."
                                  \hspace #-13.5
                                  }
                              }
                              #}
                              )
                              )

% Dynamic symbol in parentheses
  reminderDynamic =
      #(define-event-function (parser location dynamicMark)
      (ly:event?)
      (make-dynamic-script #{ 
          \markup {
          \concat {
              \normal-text \bold \italic "("
              \dynamic #(ly:music-property dynamicMark 'text)
              \normal-text \bold \italic ")"
          }
          }
          #}
          )
      )

% Needs no explanation
stacc_sempre = \markup {\line{\italic "stacc. sempre"}}

reminderStacc = \markup {\line{\italic "(stacc.)"}}

nonStacc = \markup {\line{\italic "non stacc."}}

sempre_legato = \markup {\line{\italic "sempre legato"}}