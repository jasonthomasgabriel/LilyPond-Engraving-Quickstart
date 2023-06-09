%%%% LILYPOND ENGRAVING QUICKSTART v4.0.1
%%%% music/parts/unpitched_percussion/bassdrum.ily
%%%% -----------------------------------------------------------
%%%% github.com/jasonthomasgabriel/LilyPond-Engraving-Quickstart

\version "2.24.1"
\language "english"

% Note input
  notes_bassdrum = \drummode {
    \no_music % remove when inputting notes
    % bd
  }

% Part definitions
  % Full Score Part Definition 
  part_bassdrum_score = \new DrumStaff \with {
    instrumentName = "Bass Drum"
    shortInstrumentName = "B.D."
    midiInstrument = "orchestra kit"
    drumStyleTable = #percussion-style
  } { \override Staff.StaffSymbol.line-count = #1 << \removeWithTag #'part \global \removeWithTag #'part \notes_bassdrum >> }

  % Part Only Part Definition
  part_bassdrum_part = \new DrumStaff \with {
    midiInstrument = "orchestra kit"
    drumStyleTable = #percussion-style
  } { \override Staff.StaffSymbol.line-count = #1 << \removeWithTag #'score \global \removeWithTag #'score \compressMMRests { \notes_bassdrum } >> }
  
% Scoring (for part only purposes)
  scoring_bassdrum_part = {
    <<
      \part_bassdrum_part
    >>
  }