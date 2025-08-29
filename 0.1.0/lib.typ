#import "@preview/ctheorems:1.1.3": thmrules, thmbox, thmplain, thmproof
#import "@preview/datify:0.1.4": month-name, custom-date-format
#let exercise = thmbox(
  "exercise",
  "Problema",
  base: none,
  fill: rgb("#f0f3d9"),
  bodyfmt: it => [_ #it _],
  namefmt: it => text(blue)[#it],
  titlefmt: title => text(size: 1.5em)[_ #title _],
  separator: [\ ],
  inset: 1em,
)
#let definition = thmplain("definition", "Definición", base: none, inset: 0em)
#let solution = thmplain("solution", "Solución", base: none, inset: (left: 0em)).with(numbering: none)
#let proof = thmproof("proof", "Demostración", inset: (left: 0cm))

#let template(
  university: none,
  course: none,
  professor: none,
  professor_email: none,
  title: none,
  subtitle: none,
  student: none,
  student_email: none,
  date: datetime,
  doc,
) = {
  set page(paper: "a4")
  set text(font: "New Computer Modern", size: 12pt, lang: "es")
  set par(justify: true, leading: .60em, spacing: 0.65em, first-line-indent: 1em)
  set block(spacing: 1.2em)
  show: thmrules


  set page(header: context {
    if counter(page).get().first() > 1 {
      // grid(columns: (1fr, 1fr, 1fr), rows: 1)[][][]
      set par(spacing: 0.5em)
      course
      h(1fr)
      student
      line(length: 100%)
    } else {
      // set page(header-ascent: 25%)
    }
  })

  set page(numbering: "1/1")

  block(spacing: 3em)[
    #align(center)[
      #text(18pt)[#course] \
      #text(16pt)[#title] \
      #text(14pt)[#subtitle]

      #text(12pt)[
        #custom-date-format(date, "dD de Month de YYYY", "es")
        #grid(
          columns: (1fr, 1fr),
        )[Prof. #professor \ #link("mailto:" + professor_email)][#student \ #link("mailto:" + student_email)]
      ]
    ]
    #line(length: 100%)
  ]

  doc
}