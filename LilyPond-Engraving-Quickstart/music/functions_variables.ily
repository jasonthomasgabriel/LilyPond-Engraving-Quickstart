%%%% ENGRAVING QUICKSTART
%%%% music/functions_variables.ily
%%%% version: 4.0
%%%% Author: Jason Thomas Gabriel

\version "2.24.1"

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