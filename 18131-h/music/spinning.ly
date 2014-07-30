\version "2.4"
\paper { linewidth=15\cm leftmargin=3\cm rightmargin=3\cm indent=0\mm }

\header{
 tagline  = ""
 title    = "Spinning Wheel Song"
% composer = "Albion Fellows Bacon"
}

andante = s1*0^\markup { \large { \italic Andante. } }
slower  = s1*0^\markup { \large { \italic slower. } }
dolce   = s1*0^\markup { \large { \italic dolce. } }


global = {
 \key g \major
 \time 6/8
 \autoBeamOff
 \dynamicUp
}

melody = \relative c'' {
 \clef treble
 \global

 R2.*4 \bar "||"

 d4. \stemUp b8\( a g\) |

 a( b) a d,4 d16 d |
 b'4 b8 b4 g8 \stemNeutral |

 a2 r4 |
 c8[ d] c b c b |

 a[( g]) d g4 d16 e |
 \stemUp d8 b'4 a b8 |
 g2 r4 \bar "||"

 b4. b4 b8 |
 a4\( b8\) a4 \stemNeutral c8 |
 b4 b8 fis4 a8 |

 g4.( e4) \andante e16 fis |
 g4 fis8 e4 b'8 |

 c4\< a8\! d4\fermata d,8 |
 \slower d d4 b' a8 |
 g2 r4 \bar "||"

 R2.*4 \bar "||"

 \dolce d'4. d4 b8 |
 b4 a8 e4. |
 fis8 g a fis( g) a |

 d,2 r8 d |
 b' b4 c b8 |

 b4 a8 e4 c'8 |
 b4 d,8 \stemUp a'4 b8 \stemNeutral |
 g2. \bar "|."
}

text = \lyricmode {
 \set stanza = "1. "
 My god -- moth -- er
 bids me spin, that my
 heart may not be
 sad.
 Spin and sing for my
 broth -- er's sake, and the
 spin -- ning makes me
 glad.

 \set stanza = "2. "
 Spin, sing with
 hum -- ming whir, the
 wheel goes round and
 round. For my
 broth -- er's sake, the
 charm I'll break, Prince
 He -- ro shall be
 found.

 Spin, sing, the
 gold -- en thread,
 Gleams in the sun's bright
 ray, The
 hum -- ming wheel my
 grief can heal, For
 love will find a
 way.
}

upper = \relative c''' {
 \clef treble
 \global

 #(set-octavation 1)
 <d d'>4. <d d'> |
 <d d'> <c d fis a> |
 #(set-octavation 0)
 <b, g'>4 <b d>8 <fis d'>4 <c a'>8 |

 \stemUp <b g'>\( d b'\) <b, d g>4. \stemNeutral |
 b8[ d g] b,[ d g] |

 c,[ d fis] c[ d fis] |
 b,[ d g] b,[ d g] |

 c,[ d fis] d'[ c a] |
 <d, fis>4 <d fis>8 <d g>4 <d g>8 |

 <d fis>4 <d fis>8 <d g b>4 r8 |
 <b d g>\( d'-. g-.\) <c,, d fis a>\( d'-. d'-.\) |
 <b,, d g>4 d'8-. <g b d g>4.\fermata \bar "||"

 <b,, e g>4. <b e g> |
 <e a> <e a> |
 <b dis a'> <b dis a'> |

 <b e g>4. r4 r8 |
 <b e g>4 r8 r4 r8 |

 <c e a>4. <c d fis>4\fermata r8 |
 <g b d>[ <g b d> <g b d>] <b d g>[ <d g b> <fis a c d>] |
 <g b d g>2 r8 g16[ g] \bar "||"

 <cis, ais'>8[ g' g] <cis, ais'>[ g' g] |
 <g b g'>4. <d g b d>4 <d g>8 |
 <d g b>4. <c d fis a> |
 <b d g>4 <d b'>8 <b g'>4. \bar "||"

 b8[ d g] b,[ d g] |
 c,[ e a] c,[ e a] |
 c,[ d fis] c[ d fis] |

 b,[ d g] b,[ d g] |
 d[ g b] e,_( c' <d, b'>) |

 c[ e a] c,[ e a] |
 <b, d g>4. <c d fis> |
 <b d g>2. \bar "|."
}

lower = \relative c'' {
 \clef bass
 \global

 s1*0\ff
 #(set-octavation 1)
 b8[\(\< a g] b[ a g]\)\! |
 a[\(\> g fis] c'[ fis, d]\)\! |
 #(set-octavation 0)
 d[\( e] d c[ a d,]\) |

 <g, d'>4. <g d' g> |
 s1*0\mp
 <g d'>4 r8 <g d'>4 r8 |

 <d' fis>4 r8 <d a'>4 r8 |
 <g, d'>4 r8 <e e'>4 r8 |

 <e d'>4 r8 <d' fis>4. |
 c'4( d,8) b'4( d,8) |

 c'4( d,8) g4 r8 |
 <d g>4 r8 <d fis>4 r8 |
 <a g'>4 r8 g'4.\fermata \bar "||"

 e8[ fis g] e[ fis g] |
 a[( b c]) a[ b c] |
 b,[ cis dis] b[ cis dis] |

 e[( fis g]) e4 r8 |
 e4 r8 r4 r8 |

 c4. \stemUp d4_\fermata r8 \stemNeutral |
 d[ d d] d[ d,] <d, d'> |
 <a' a'>2 r4 \bar "||"

 e''4. e |
 d8[( e fis] g[ a b]) |
 \stemUp d,[ e d]( d,[) e d] \stemNeutral |
 <g, g'> d'' g <g, d' g>4. \bar "||"

 <g d'>\p <g d'> |
 <g e'> <g e'> |
 <d' a'> <d a'> |

 <g, d'> <g d'> |
 <a g'> <g g'> |

 c a |
 d d, |
 <g g'>2. \bar "|."
}

\score {
 <<
  \set Score.barNumberVisibility = ##f
  \override Score.Rest #'style = #'classical

  \context Voice = melody \melody
  \lyricsto melody \new Lyrics \text

  \context PianoStaff <<

   \context Staff = upper \upper
   \context Staff = lower \lower
  >>
 >>
 \layout { \context { \RemoveEmptyStaffContext } }
 \midi { \tempo 4=96 }
}

