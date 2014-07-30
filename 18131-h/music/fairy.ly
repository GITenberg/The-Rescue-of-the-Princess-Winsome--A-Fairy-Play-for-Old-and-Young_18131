\version "2.4"
\paper{ linewidth=15\cm leftmargin=3\cm rightmargin=3\cm indent=0\mm }

\header{
 tagline  = ""
 title    = "Fairy Chorus"
% composer = "Albion Fellows Bacon"
}

cue = {
 \once \set fontSize = #-3
 \once \override Stem  #'length = #5.5
}

duett = s1*0^\markup { \large { \caps Duett. } }
piano = s1*0^\markup { \large { \caps Piano. } }

global = {
 \time 6/8
 \autoBeamOff
}

upper  = \relative c'' {
 \clef treble
 \key c \major
 \global

 \partial 8
 \duett
 g8 |
 e'4 e8 d b g |
 c4. r4 g8 |

 g4 g8 f g f |
 e4.( g8) r c |

 d4 d8 d4 d8 |
 d4.( b4) b8 |

 b b b c4 a8 |
 g4 r8 g4 r8 |
 g4 g8 g4 g8 |

 g4. r4 g16\( g\) |
 g4 g8 as4 f8 |

 g4. s4 g8 |
 e'8.( d16) c8 b[ c] a |
 g4.( e4) e8 |

 g4 g8 f4 g8 |
 e4. r4 e8 |
 a4 a8 b4 e,8 |

 c'4 c8 d4 d8 |
 e4 c8 g4 d'8 |
 c2 r8 \bar "|."
}

lower = \relative c'' {
 \clef treble
 \global

 \partial 8
 g8 |
 c4 g8 f f f |
 e4. s4 e8 |

 e4 e8 d e d |
 c4.( e8) s g |

 b4 b8 c4 a8 |
 b4.( g4) d8 |

 d d d f4 c8 |
 b4 s8 g'4 s8 |
 f4 e8 d4 c8 |

 b4. s4 g'16\( g\) |
 g4 g8 as4 f8 |

 g4. \cue <b, d f>4 g'8 |
 c4 g8 g[ a] f |
 e4.( c4) c8 |

 e4 e8 d4 e8 |
 c4. s4 c8 |
 e4 e8 e4 e8 |

 e4 e8 a4 a8 |
 g4 e8 e4 f8 |
 e2 s8 \bar "|."
}
     
verseone = \lyricmode {
 \set stanza = "1."
 We come, we come at thy call, On
 rain -- bow bub -- bles we float __ We
 fair -- ies, one and all, __ Have
 ans -- wer'd the wind flute's note.

 \set stanza = "1."
 The south wind's sil -- ver
 flute, From the far -- off sum -- mer
 land, It bade us has -- ten here, __ To
 lend a help -- ing hand. It bade us has -- ten,
 has -- ten here, To lend a help -- ing hand.
}

versetwo = \lyricmode {
 "" "" "" "" "" "" "" ""
 "" "" "" "" "" "" ""
 "" "" "" "" "" ""
 "" "" "" "" "" ""

 \set stanza = "2."
 "To the" "aid of" the gal -- lant
 knight, To the "help of" the prin -- cess
 fair, "To the" res -- cue of the prince, __ We
 come "to the" Og -- re's lair. "" To the res -- cue
 of the prince, We come "to the" Og -- re's lair.
}

versethree = \lyricmode {
 "" "" "" "" "" "" "" ""
 "" "" "" "" "" "" ""
 "" "" "" "" "" ""
 "" "" "" "" "" ""

 \set stanza = "3."
 And now, at thy be --
 hest, We "" "pause in" our bright ar --
 ray, To end thy wea -- ry quest, __ For
 love has found a way, To end thy wea -- ry,
 wea -- ry quest, For love has found a way.
}

piano = \relative c {
 \clef bass
 \key c \major
 \global

 \partial 8
 \piano
 r8 |
 c4 <g' c>8 <g b>4 r8 |
 c,4 <g' c>8 <g c>4 r8 |

 g4 g8 g,4 g8 |
 c4 g'8 c4 r8 |

 <d g>4 <d g>8 <d fis>4 <d fis>8 |
 <d g>4 <d g>8 d4 r8 |

 d,,4 d'8 a'4 c8 |
 g,4 d'8 <g b>4 r8 |
 g4 g8 g4 g8 |

 g4 g,8 g4 g8 |
 g'4 g8 as4 f8 |

 g4. g,4 r8 |
 <c, c'>4 <g'' c e>8 <a c>4 r8 |
 <c,, c'>4 e'8 g4 r8 |

 <g, g'>4 g'8 b4 g8 |
 c,4 g'8 c4 r8 |
 <a c>4 <a c>8 <gis d'>4 <gis d'>8 |

 <a c>4 <a c>8 <f f'>4 f8 |
 g4 <g, g'>8 g'4 <g b>8 |
 <c, g' c>2 r8 \bar "|."
}
     
\score {
 <<
  \set Score.barNumberVisibility = ##f
  \override Score.Rest #'style = #'classical

  \context Staff = duet <<
   \override Staff.Rest #'staff-position = #0
   \context Voice = upper { \voiceOne << \upper >> }
   \context Voice = lower { \voiceTwo << \lower >> }
  >>
  \lyricsto upper \new Lyrics \verseone
  \lyricsto upper \new Lyrics \versetwo
  \lyricsto upper \new Lyrics \versethree

  \context Staff = piano \piano
 >>
 \layout { \context { \RemoveEmptyStaffContext } }
 \midi { \tempo 4=96 }
}

