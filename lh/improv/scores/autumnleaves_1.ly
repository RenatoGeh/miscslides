\version "2.20.0"

\include "lilyjazz.ily"
\include "jazzchords.ily"
\include "jazzextras.ily"

melody = \relative g' {
  \key g \major
  \time 4/4
  \clef treble

  \set Score.alternativeNumberingStyle = #'numbers

  r4 e4 fis4 g4 \bar "[|:"
  \repeat volta 2 {
    c1~ | c4 d,4 e4 fis4 | b2 b2~ \break
    b4 c,4 d4 e4 | a1~
  }
  \alternative {
    { a4 b, cis dis | g1 \break | r4 e fis g \bar ":|]" }
    { a4 fis a g }
  }
  e1~ | e4 r dis e \break
}

harmony = \chordmode {
  r1 a:m7 d:7 g:maj7
  c:maj7 fis:m7.5- b:7 e:m
  e:m b:7 e:m e:m
}

\score {
  <<
    \new ChordNames \harmony
    \new Staff \melody
  >>
}
