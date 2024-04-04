import nimib, nimislides

template mySlide(ident: untyped, body: untyped) =
  template `slide ident` =
    slide:
      body

mySlide(Hi):
  typewriter("Hi, I am Aristotle")

mySlide(Plane):
  nbText("""
How did you feel the first time you took a plane?
- Fear
- Joy
- Anger
- none of the above
""")

when isMainModule:
  nbInit(theme=revealTheme)
  setSlidesTheme(Solarized)

  #slideHi
  slidePlane

  nbSave
