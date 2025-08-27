#import "@preview/ctheorems:1.1.3": thmrules, thmbox, thmplain, thmproof

#let exercise = thmbox("exercise", "Ejercicio", base: none, stroke: black, bodyfmt: it => [_ #it _] )
#let definition = thmplain("definition", "Definición", base: none)
#let proof = thmproof("proof", "Demostración", inset: (left: 0cm))

#let template(title: none, doc) = {
  set page(paper: "a4")
  set text(font: "New Computer Modern", size: 12pt)
  show: thmrules

  align(center)[
    #text(size: 18pt)[
      #title
    ]
  ]
  doc
}