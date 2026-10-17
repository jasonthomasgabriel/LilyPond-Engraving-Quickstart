%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% resources/papersize_margins.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"

 \paper {
  #(set-paper-size "a4") % Standard, but I like to be explicit on this.
  
  top-margin = 15\mm
  bottom-margin = 7\mm
  left-margin = 15\mm
  right-margin = 12\mm

  % When tinkering with spacings, these may help
  % annotate-spacing = ##t
  % markup-system-spacing.basic-distance = #5
  % top-system-spacing.basic-distance = #12
  % last-bottom-spacing.minimum-distance = #12

  % optional settings to avoid filling the page horizontally and vertically when not appropriate.
  % ragged-bottom = ##t
  % ragged-last-bottom = ##f
  % system-system-spacing.basic-distance = #25          %25 is just a guess

  % optional settings for two-sided print with bindings in the centre
  % two-sided = ##t
  % top-margin = 15\mm
  % bottom-margin = 7\mm
  % inner-margin = 15\mm
  % outer-margin = 12\mm
  % binding-offset = 5\mm
}