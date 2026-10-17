% Music excerpt: District 394, Viola (solo), measures 6-13.
% Source: https://github.com/jasonthomasgabriel/District-394--LilyPond-Score-/blob/main/District%20394/music/parts/instrument_library/user_instruments/user_instrument_1.ily
districtGlobal = {
  \key f \major
  \set Score.currentBarNumber = #6
  \time 10/8 s8*10
  \time 10/8 s8*10
  \time 10/8 s8*10
  \time 12/8 s8*12
  \time 10/8 s8*10
  \time 10/8 s8*10
  \time 9/8 s8*9
  \time 12/8 s8*12
}

districtViolaExcerpt = \relative c' {
  f,2.\dynamic_molto_espressivo \f \tuplet 3/4 { g8\(\tenuto c\tenuto f\)\tenuto } |
  \tuplet 6/7 { e4 c bf } d4.\tenuto |
  \tuplet 6/7 { c4 a g ~ } g4 bf8 |
  a1. |
  f'2. \tuplet 3/4 { e8\(\tenuto c\)\tenuto f\tenuto } |
  \tuplet 6/7 { e4 c a\( } c4.\)\tenuto |
  bf4. ~ bf8 c\( d2\) |
  c1. |
}
