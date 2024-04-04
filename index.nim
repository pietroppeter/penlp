import nimib, nimislides

template mySlide(ident: untyped, body: untyped) =
  template `slide ident` =
    slide:
      body

mySlide(Hi):
  typewriter("Hi, I am Aristotle")

mySlide(Plane):
  nbKaraxCode:
    let question = "How did you feel the first time you took a plane?"
    let options = ["Fear", "Joy", "Anger"]
    var picked = ""
    karaxHtml:
      p:
        text question
      if picked.len == 0:
        for option in options:
          button:
            text option
            proc onClick() =
              picked = option
      else:
        p:
          text "You have picked " & picked

when isMainModule:
  nbInit(theme=revealTheme)
  setSlidesTheme(Solarized)

  #slideHi
  slidePlane

  nbSave
