\version "2.4"
\paper{ linewidth=15\cm leftmargin=3\cm rightmargin=3\cm indent=0\mm }

\header{
 tagline  = ""
 title    = "``Spin, Wheel, Reel Out Thy Golden Thread''"
% composer = "Albion Fellows Bacon"
}

vivace = s1*0^\markup { \large { \italic Vivace. } }

global = {
 \key g \major
 \time 4/4
 \autoBeamOff
 \dynamicUp
}

melody = \relative c'' {
 \clef treble
 \global

 \partial 8
 \vivace
 d8 |
 d4. \stemUp b8 a b g d \stemNeutral |
 e2 r4 e' |

 d4. fis16[ e] d8 c a e' |
 d2( b) |

 b4 b4. b8 b8. b16 |
 g4 a b4. b8 |

 d4. e8 d4. a8 |
 d4. <e g>8 d4. d8 |

 c4\< b b4. a8 |
 e'2 r4 d |
 cis-. d-. e4.-. d8-. |
 <g, g'>2.-.\! r4 \bar "|."
}
     
text = \lyricmode {
 Spin,
 wheel, reel out thy gold -- en
 thread, My
 hap -- py heart sings glad and
 gay, __
 He -- ro shall 'scape the
 O -- gre dread, And
 I my own true
 love shall wed. For
 love has found a
 way, For
 love has found a
 way.
}

upper = \relative c' {
 \clef treble
 \global

 \partial 8
 b8 |
 d[_\( e g b] d[ e g b]\) |
 c,,[_\( e a b] c[ e a e']\) |

 d[\( c a fis] c'[ a fis d]\) |
 b'[\( g d b] g'[ d b g]\) |

 b[ b b b] <fis a b dis>[ <fis a b dis> <fis a b dis> <fis a b dis>] |
 <g b e>[ <e g b>] <c e a>4 <b dis fis b>4. b'8 |

 << { d4.^\( e8\) d4.^\( a8\) } \\
 { \autoBeamOff r8 <fis a c> <fis a c> r r <fis a c> <fis a c> r } >> |
 << { d'4.^\( g8\) d4. d8 } \\
 { r8 <d, g b> <d g b> r r <d g b> <d g b> r } >> |

 <e g c>4 <d g b> <c e b'>4. a'8 |
 <e a c e>2 r4 <d g b d> |
 <c g' ais> <d g b> <e g c>4. <d fis c'>8 |
 <g b d g>2. r4 \bar "|."
}

lower = \relative c {
 \clef bass
 \global

 \dynamicUp
  r8 |
 <g d' g>2 r |
 <g e'> r |

 <d' fis c'> <d fis c'>4 r |
 <g, d' g>2 <g d' g> |

 b'8[\f\< b b b] <b, b'>[ <b b'> <b b'> <b b'>]\! |
 b[ b c c] b[ b b b] |

 <d, d'> <d' fis c'> <d fis c'> r <d, d'> <d' fis c'> <d fis c'> r  |
 g, <d' g b> <d g b> r g, <d' g b> <d g b> r |

 d4 d c4. c8 |
 <a a'>2 r4 d |
 d d d4. d8 |
 <g, d' g>2. r4 \bar "|."
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

