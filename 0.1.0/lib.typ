#import "@preview/ctheorems:1.1.3": thmrules, thmbox, thmplain, thmproof

#let exercise = thmbox(
  "exercise",
  "Problema",
  base: none,
  fill: rgb("#f0f3d9"),
  bodyfmt: it => [_ #it _],
  namefmt: it => text(blue)[#it],
  titlefmt: title => text(size: 1.5em)[_ #title _],
  separator: [\ ],
  inset: 1em
)
#let definition = thmplain("definition", "Definición", base: none)
#let solution = thmplain("solution", "Solución", base: none, inset: (left: 0em)).with(numbering: none)
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