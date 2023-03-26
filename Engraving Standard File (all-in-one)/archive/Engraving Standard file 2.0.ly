\version "2.18.2"
\language "english"

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Engraving Standard File v2.0 - 30th May 2019 - Tommy Everts  %
 % ------------------------------------------------------------ %
 % A quick start file, speeding up my workflow and containing   %
 % my common preferences.                                       %
 %                                                              %
 % - For use with multiple parts, it's highly recommended to    %
 %   change the variable names to something more intuitive.     %
 %                                                              %
 % - When using instrument names, choose the alternative        %
 %   indentation, as Lilypond not yet has a feature for this.   %
 %                                                              %
 % - This file will generate two MIDI outputs; one as scored    %
 %   and one run through articulate.ly. The articulated version %
 %   is outputted in MIDI only (so no visual result).           %
 %                                                              %
 % Enjoy,                                                       %
 % Tommy                                                        %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Project   :                                                  %
 % ------------------------------------------------------------ %
 % Start date:                                                  %
 % Last edit :                                                  %
 % ------------------------------------------------------------ %
 % Description:                                                 %
 %                                                              %
 %                                                              %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                                % Engraving Standard File v2.0 %
                                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "articulate.ly"

% Engraving Standard file version number. 
ESF_version = "ESF v2.0"

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

% Partial take-over from "titling-init.ly"
% Headers upside of page %
\paper {  
  % Scheme to make \caps available when using \fromproperty
  % Adaptation on the following source: https://sourceforge.net/p/testlilyissues/issues/1482/ %
  #(define-markup-command (fromproperty layout props symbol)
     (symbol?)
     (let ((m (chain-assoc-get symbol props))
           (caps? (chain-assoc-get 'caps props))
           (dash? (chain-assoc-get 'dash props)))
       (if (markup? m)
           (interpret-markup layout props
             (if dash?
                 (if caps?
                     #{ \markup \concat \caps { "- " #m " -" } #}
                     #{ \markup \concat { "- " #m " -" } #})
                 (if caps?
                     #{ \markup \caps { #m } #}
                     #{ \markup { #m } #})))
           empty-stencil)))

  #(define-markup-command (caps layout props arg) (markup?)
     (interpret-markup layout (prepend-alist-chain 'caps #t props)
       (make-smallCaps-markup arg)))

  #(define-markup-command (dash layout props dashthisup)
     (markup?)
     (interpret-markup layout (prepend-alist-chain 'dash #t props)
       #{ \markup { #dashthisup } #}))
  
  bookTitleMarkup = \markup {
    \column {
      \fill-line {
        {\null}
        {\null}
        \smaller \smaller \smaller \smaller \typewriter \bold \fromproperty #'header:draftline
      }
      \vspace #0.25
      \fill-line{
        {\null}
        {\null}
        { \concat { \italic { \fromproperty #'header:productiontitle \hspace #1 } \fromproperty #'header:bigsongnumber }}
      }
      \fill-line { \italic \fromproperty #'header:dedication }
      \vspace #0.1 % That's a little close, but I quite like the dedication to rest on the title very snugly.
      \column {
        \fill-line{
          \huge \larger \larger \larger \larger \larger \bold \caps \fromproperty #'header:title
        }
        \fill-line {
          \bold \caps
          \fromproperty #'header:subtitle
        }
        \vspace #-0.30
        \fill-line {
          \smaller \smaller \italic
          \fromproperty #'header:subsubtitle
        }
        \fill-line {
          \smaller \smaller \sans \italic
          \fromproperty #'header:revision
        }
        \vspace #0.75
        \fill-line {
          { \smaller \fromproperty #'header:poet }
          { \dash \caps \fromproperty #'header:instrument }
          { \smaller \fromproperty #'header:composer }
        }
        \fill-line {
          { \smaller \fromproperty #'header:meter }
          { \smaller \fromproperty #'header:arranger }
        }
      }
    }
  }

  scoreTitleMarkup = \markup {
    \column {
      \on-the-fly \print-all-headers { \bookTitleMarkup \hspace #1 }
      \fill-line {
        { \smaller \fromproperty #'header:piece }
        { \smaller \fromproperty #'header:opus }
      }
      \vspace #0.3
      \fill-line {
        { \smaller \fromproperty #'header:cue }
        {\null}
        {\null}
      }
      \vspace #0.8
    }
  }
}

% Partial take-over from "titling-init.ly"
% Not-first-page headers and all footers %
\paper {
  oddHeaderMarkup = \markup {
    \fill-line {
      { \italic \on-the-fly #not-part-first-page \smaller \smaller \sans \fromproperty #'header:revision }
      { \null }
      \line {
        \concat{ \on-the-fly #not-part-first-page \smaller \caps \fromproperty #'header:instrument \hspace #1 \smaller \bold \caps \on-the-fly #not-part-first-page \fromproperty #'header:title \hspace #1 }
        \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      }
    }
  }

  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
        \line {
          \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string \hspace #1
          \on-the-fly #not-part-first-page \concat{ \smaller \bold \caps \fromproperty #'header:title \hspace #1 \smaller \caps \on-the-fly #not-part-first-page \fromproperty #'header:instrument }
        }
        {\null}
        \line { \on-the-fly #not-part-first-page \italic \smaller \smaller \sans \fromproperty #'header:revision }
      }
    }
  }

  oddFooterMarkup = \markup {
    \column {
      \fill-line {
        %% Copyright header field only on first page in each bookpart.
        \on-the-fly #part-first-page \smaller \smaller \italic \fromproperty #'header:copyright
      }
      \fill-line {
        %% Tagline header field only on last page in the book.
        \on-the-fly #last-page \smaller \smaller \fromproperty #'header:tagline
      }
    }
  }
}

% Standard staff size = 20, explicitly stated for "house font"-scaling. See table with recommendations for various sizes: http://lilypond.org/doc/v2.19/Documentation/notation/setting-the-staff-size
#(set-global-staff-size 20)

\paper {
  #(set-paper-size "a4") % Standard, but I like to be explicit on this.
  top-margin = 15\mm
  bottom-margin = 7\mm
  left-margin = 15\mm
  right-margin = 12\mm
}

% Set fonts to Adobe's Source Pro family, for a more modern, yet equally sturdy feel. This is wrapped up in an include-file, so it can more easily turned off when required.
% TURN OFF WHEN NOT AVAILABLE ON SYSTEM % 
\include "house_font.ily"

\layout {
  \numericTimeSignature
  \accidentalStyle modern-cautionary

  \set Score.markFormatter = #format-mark-box-barnumbers

  \override Staff.InstrumentName.self-alignment-X = #RIGHT
  \override PianoStaff.InstrumentName.self-alignment-X = #RIGHT
  
  \override Score.MetronomeMark.Y-offset = 4\mm
  \override Score.ChordName.font-family = #'serif
  
  \override Score.DynamicTextSpanner.font-size = #-0.5
  \override Score.TextSpanner.font-size = #-0.5
  
  % \override Score.BarNumber.break-visibility = ##(#t #t #t)
  
  % Use if NOT using instrument names
  indent = 0\mm
  short-indent = 0\mm

  % Workable estimates if using instrument names on the left.
  % indent = 20\mm
  % short-indent = 10\mm
  
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }

  \context {
    \Score
    \override LyricText.font-size = #-1
  }
}

global = {
  % \key c \major
  % \time 4/4
  % \tempo "Andante" 4=100
}

notes = \relative c' {
  c
}

part = \new Staff \with {
  %midiInstrument = ""
  %instrumentName = ""
  %shortInstrumentName = ""
} { \clef treble << \global \notes >> }

scoring = {
  <<
    \part
  >>
}

\book {
  \bookpart {
    \header {
      % draftline = \draftline
      % productiontitle = ""
      % bigsongnumber = \markup \bigsongnumbermarkup "1"
      % revision = "REV#1 22-05-19 - description of changes"
      % cue = \markup \cueheadermarkup ""
      % dedication = "n"
      % title = ""
      % subtitle = ""
      % subsubtitle = ""
      % instrument = "" % "Part" would be an apt name, as this could easily say "full score". I could change it, but the whole point is to leave as much Lilypond's standards as possible.
      % composer = ""
      % arranger = ""
      % poet = ""
      % meter = ""
      % piece = ""
      % opus = ""
      % copyright = ""
      % tagline = ""
    }
    
    \score { \scoring \layout { } \midi { \set Score.midiChannelMapping = #'instrument } }
  }
}

% Articulated MIDI score block %
% (Purposely creates no visual output) %
\score { \unfoldRepeats \articulate << \scoring >> \midi { \set Score.midiChannelMapping = #'instrument } }