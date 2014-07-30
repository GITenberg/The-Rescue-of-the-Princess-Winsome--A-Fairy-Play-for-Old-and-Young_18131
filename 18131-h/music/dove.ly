\version "2.4"
\paper{ linewidth=15\cm leftmargin=3\cm rightmargin=3\cm indent=0\mm }

\header{
 tagline  = ""
 title    = "The Dove Song"
% composer = "Albion Fellows Bacon"
}

andante = s1*0^\markup { \large { \italic Andante. } }
andantino  = s1*0^\markup { \large { \italic Andantino. } }

global = {
 \key g \major
 \time 4/4
 \autoBeamOff
 \dynamicUp
}

melody = \relative c'' {
 \clef treble
 \global

 b4 \times 2/3 { b8 c b } a_( d4.) |
 r4 \times 2/3 { b8 c b } a_( d4.) |

 \andante b4 b8. b16 b4 b |
 e,2. r4 |
 e fis8. fis16 g4 g8\(\< g\) |

 a4. b8 a2\! |
 b4 b8 b b4 b |

 e2.\fermata r4\fermata |
 s1*0\mp \andantino d8 b4 b8 b4 a8 g |

 b\( a4. e\) e8 |
 d4 fis8. g16 a4 g8[ a] |

 b2 r4 r8 b |
 d4 b b a8 g |

 b4 a e4. e8 |
 d4 g8. b16 a4. fis8 |

 g2.\fermata r8 b |
 d2.\< \stemUp \times 2/3 { a8 b a\!} \stemNeutral |
 b8( d4.) r4 d, |

 e8 g fis[ a] g[ b] a[ e'] |
 d4 \times 2/3 { d8[ e d] } <g, g'>2 \bar "|."
}
     
text = \lyricmode {
 Now, flut -- ter and fly,
 flut -- ter and fly,
 Bear him my heart of
 gold,
 Bid him be brave lit -- tle
 car -- rier dove!
 Bid him be brave and
 bold!

 Tell him that I at my
 spin -- ning wheel, Will
 sing while it turns and
 hums, And
 think all day of his
 love so leal, Un --
 til with the flute he
 comes.

 Now
 fly, flut -- ter and
 fly, Now
 flut -- ter and fly a --
 way, a -- way. 
}

upper = \relative c' {
 \clef treble
 \global

 r4 <b d g> <c d fis>2 |
 r4 <b d g> <c d fis>2 |

 b'4 b8. b16 <b, dis b'>4 <b dis b'> |
 <g b e>2. r4 |
 <g b e>4 <a b fis'> <b e g>2 |

 <c e a>2. r4 |
 <b e g>2^\staccato <b dis fis a>^\staccato |

 <e g b e>2.\fermata r4\fermata |
 b8[ d] b[ d] b[ d] b[ d] |

 c[ e] c[ e] c[ e] c[ e] |
 c[ d] c[ d] c[ d] c[ d] |

 b[ d] b[ d] b[ d] b[ d] |
 b[ d] b[ d] b[ d] b[ d] |

 c[ e] c[ e] c[ e] c[ e] |
 b[ d] b[ d] c[ d] c[ d] |

 b[ d b'] d, <b g'>4\fermata r8 b' |
 d4
 #(set-octavation 1)
 a'\trill d r
 #(set-octavation 0) |
 b,8( d4.)
 #(set-octavation 1)
 g4\trill g'8 r |
 <c, e> r <c d fis> r <b d g> r <c e a> r |
 <b d g>4 <c d fis a>
 #(set-octavation 0)
 <g b d g>2 \bar "|."
}

lower = \relative c {
 \clef bass
 \global

 r4 <g g'> d'2 |
 r4 d d2 |

 b'4 b8. b16 b,4 b |
 e2. r4 |
 e dis e2 |

 c2.\< r4\! |
 b2 <b, b'> |

 <e, e'>2.\f r4_\fermata |
 <g' d'>4 <g d'> <g d'> <g d'> |

 <g e'> <g e'> <g e'> <g e'> |
 <d' a'> <d a'> <d a'> <d a'> |

 <g, d'> <g d'> <g d'> <g d'> |
 <g d'> <g d'> <g d'> <g d'> |

 <g e'> <g e'> <g e'> <g e'> |
 <d' g> <d g> <d g> <d g> |

 <g, d'> <g d'> <g d'> r |
 d d' <fis c'> r |
 d, d' <g b> r |

 R1 |
 d'4 d, g,2 \bar "|."

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

