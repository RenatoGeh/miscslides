\version "2.20.0"

\include "lilyjazz.ily"
\include "jazzchords.ily"
\include "jazzextras.ily"

melody = \relative g' {
  \key g \major
  \time 4/4
  \clef treble

  \set Score.alternativeNumberingStyle = #'numbers

  fis4 b, fis'2~ | fis4 fis e fis | g1~ | g4 g fis g | \break
  a1~ | a4 d, d' c | b1~ | b4 r ais b | \break
  c c a a | fis2. c'4 | b2 b~ | b2. e,4 | \break
  a2. g4 | fis2 g4 b, | e1 | r4 e fis g \bar "||"
}

harmony = \chordmode {
  fis1:m7.5- b:7.9- e:m e:m
  a:m7 d:7 g:maj7 g:maj7
  fis:m7.5- b:7.9- e2:m7 ees:7 d:m7 des:7
  c1:maj7 b:7.5- e:m7 e:m7
}

\score {
  <<
    \new ChordNames \harmony
    \new Staff \melody
  >>
}
