% Music excerpts: Ouverture - Bella/Donna, measures 5-10.
% Sources:
% https://github.com/jasonthomasgabriel/Sandbox/blob/main/LEQ-showcase-Ouverture-BellaDonna/Ouverture-BellaDonna/music/parts/instrument_library/other/chords.ily
% https://github.com/jasonthomasgabriel/Sandbox/blob/main/LEQ-showcase-Ouverture-BellaDonna/Ouverture-BellaDonna/music/parts/instrument_library/voice/soprano.ily
% https://github.com/jasonthomasgabriel/Sandbox/blob/main/LEQ-showcase-Ouverture-BellaDonna/Ouverture-BellaDonna/music/parts/instrument_library/voice/lyrics/lyrics_soprano.ily
% https://github.com/jasonthomasgabriel/Sandbox/blob/main/LEQ-showcase-Ouverture-BellaDonna/Ouverture-BellaDonna/music/parts/instrument_library/unsorted/piano.ily

bellaDonnaGlobal = {
  \key a \major
  \set Score.currentBarNumber = #5
  \time 4/4 s1
  \time 4/4 s1
  \time 6/4 s1.
  \time 4/4 s1
  \time 3/4 s2.
  \time 5/4 s4*5
}

bellaDonnaChords = \chordmode {
  <a, cs e b>2 e:sus2/gs |
  < fs, a, cs gs >2 < d fs a e' > |
  <a, cs e b>2 cs:m7 d |
  fs2:m7 < d, fs, a, e > |
  fs2:m7 cs4:m7 |
  e2:sus4 e2. |
}

bellaDonnaSopranoExcerpt = \relative c' {
  \dynamicUp % position dynamics above the staff
  e8 16 16 ~ 8 a16 16 ~ 8 e r8 cs16 d |
  e8 16 16 ~ 8 a16 16 4 r8. cs,16 |
  e8 16 16 ~ 8 16 16 8 r8 \tuplet 3/2 { r8 e a, } fs'4\mf \breathe fs8\tenuto\f gs\tenuto |
  a8 16 16 ~ 8 gs \tuplet 3/2 { r8 gs fs } fs8 gs |
  \tuplet 3/2 { a4 a fs } <>\mf\> \tuplet 3/2 { e8 e cs ~ } |
  \override TextScript.outside-staff-priority = #50
  cs8 r8 \xNote { b4^\markup{\smaller "(parlando)"}\f } r4 r4 \breathe \once \override Hairpin.to-barline = ##f e8^\markup{\smaller "(cantado)"}\tenuto\mf\< a\tenuto\! |
  \revert TextScript.outside-staff-priority
}

bellaDonnaSopranoLyrics = \lyricmode {
  uit mijn land
  ver -- ban -- nen, ook al
  kan ik nu weer te -- rug. Ik
  zal moet -- en ver -- ge -- ten wie ik ben. Bel -- la
  is niet meer, en kan niet meer, en
  zal niet meer zijn wie ze
  \markup { \italic "was." } Don -- na
}

bellaDonnaPianoUpperExcerpt = \relative c'' {
  <>\p < a, b cs e >4 << { gs''8 e } \\ { b4 } >> <b, e fs>4 <>\< \tuplet 3/2 { e'8 fs gs } <>\! |
  < a, cs gs' >4 \mf\> ~ \tuplet 3/2 { 8 a, e' } <>\p << { < e gs >4 < fs d > } \\ { a,2 } >> |
  < a b cs e >4 ~ \tuplet 3/2 { 8 a e' } <gs, b e>4 \tuplet 3/2 { gs8 e' b } < a d fs >8. a16 < a d fs >8\tenuto\mf\< < a e' gs >\tenuto |
  < cs e fs a >4\f ~ \tuplet 3/2 { 8 cs a' } < a, d e fs >4 <a d fs>8 <a d gs> |
  < cs e fs a >8. 16 ~ 4 < gs b e >4\mf |
  < a b e >4\p < a b e > < gs b e >2 \once \override Hairpin.to-barline = ##f 8\tenuto\mf\< < b e a >\tenuto\! |
}

bellaDonnaPianoLowerExcerpt = \relative c' {
  a,8. e'16 a4 gs, gs' |
  fs,4 fs' d,8 a' d4 |
  a4 e' cs, cs' <d, d'> <d d'>8\tenuto <e e'>\tenuto |
  <fs fs'>4 fs' <d, d'> d'8 <e, e'>8 |
  <fs fs'>8. <fs fs'>16 ~ 4 <cs cs'> |
  e2 e'2. |
}
