#let date = datetime.today()
#let currentpage = context here().page()
#let pagecount = context (counter(page).final().first())
#let title = [
  Verksamhetsrapport DNS 2025/2026
]

#set heading(numbering: "1.a.")
#set text(font: "New Computer Modern")
#set par(justify: true)

#set page(paper: "a4", margin: (top: 4.5cm, x: 3.5cm),
  header: align(
    left+top, 
    grid(
      inset: (y: 2cm), 
      columns: (16mm, 1fr),
      gutter: 5pt, 
        image("./Dataloggavit.png", height: 16mm, width: 16mm), 
        par(leading: 0.5em)[
          #text(weight: "bold")[ Datateknologsektionen ]\
          Chalmers studentkår #h(1fr) Sida #currentpage av #pagecount\
          #title #h(1fr) #date.display()
    ] + line(length: 100%, stroke: 0.5pt))
  )
)

#align(center,
  [
    #text(size:20pt, weight: "bold")[
      #title
    ]

    #text(size:16pt)[
      Period: 2025-05-01 -- 2025-08-17
    ]
  ]
)

= Arrangemangslista
#lorem(1000)    
#image("./Dataloggavit.png")
