// Conf låter en skicka parametrar till templaten. De här kan vi alltså sätta i
// våran "main" fil. De sätts till none här förutom styret som faktiskt har en
// default. I våran mall så har vi gett defaults, men om de inte ändras på så
// kommer dokumentet inte att bygga.
#let conf(
  motion_name: none,
  people: (
  ),
  mail: "styret@dtek.se",
  doc
) = {

  let months = ("januari", "februari", "mars", "april", "maj", "juni", "juli", "augusti", "september", "oktober", "november", "december")
  let translated-month(se) = months.at(se.month() - 1)
  let date = datetime.today()

  // And my mom said functional programming is worthless
  let pagecount = context (counter(page).display((current,end) => [Sida #current av #end], both: true))
  // Ändra det här för verksamhetsberättelse/plan template !!
  let title = [Motion: #motion_name]

  // Metadata till PDFen
  // set document(author: name, title: title)
  // Rubriker har format 1.a.x. Rubriker och sub-rubriker skriver man med =, ==, ===.
  set heading(numbering: "1.1.")
  // Spacing mellan rubriker och text
  show heading: set block(below: 1em)
  // Font, ändra inte size helst, vissa saker skulle bli fulare :(
  set text(lang: "se", font: "New Computer Modern", size: 11pt)
  // Justified text, stäng av om du hatar
  set par(justify: true)
  // Byt mellan jag/vi beroende på antal motionärer
  show <pronomen>: if people.len() == 1 [jag] else [vi]

  // Definition för header och footer främst.
  set page(paper: "a4", margin: (top: 4.5cm, bottom: 4cm, x: 3.5cm),
    header:
      align(
      left+top,
      grid(
        inset: (y: 2cm),
        // En kolumn för bild och en för resten
        columns: (16mm, 1fr),
        gutter: 5pt,

        // Fick inte svg att funka, inkluderar båda i git repot 😭
        image("./Dataloggavit.png", height: 16mm, width: 16mm),

        par(leading: 0.5em)[
          #text(weight: "bold")[Datateknologsektionen] \
          // #h(1fr) innebär att  vi fyller ut med white space tills nästa text behöver finnas. Den texten blir implicit right-aligned
          Chalmers studentkår #h(1fr) #pagecount \
          #title #h(1fr) #date.day() #translated-month(date) #date.year()
        ]
      ) +
      // Den här är cursed men cool. Typst tycker 100% och 16mm är relativa så är fine att subtrahera så här för att linea upp bättre.
      align(right, line(length: 100%-16mm, stroke: 0.5pt))
    ),

    footer:
      line(length: 100%, stroke: 0.5pt) +
      block(
        spacing: 0.5em,
        align(
          left+top,
          par(leading: 0.5em)[
            Dateteknologsektionen #h(1fr) #link("mailto:" + mail) \
            Rännvägen 8 #h(1fr) #link("www.dtek.se") \
            412 58 Göteborg \
          ]
        )
      )
  )

  // Genererar titeln, period ges av den som skriver och "title" genereras längre upp beroende på andra parametrar som användaren skickar med.
  align(center,
    par(leading: 16pt)[
      #text(size: 17pt, weight: "bold")[
        #title \
      ]
    ]
  )

  // Den här är viktig! doc är vad som enligt våran conf faktiskt innehåller
  // all våran text. Om doc försvinner här ifrån kommer ingen text dyka upp som
  // den ska!
  doc
  // Snälla läs den övre kommentaren om du håller på att meka
  // Allting här under dyker alltså upp *under* all text som ni skriver i själva texten.
  
  v(1em)
  text(style: "italic")[
    #people.map(person => block(
      spacing: 0.5em,
      (person.name, person.at("post", default: "") + " " + person.at("committee", default: ""), person.year)
      .filter(item => item != " ")
      .join(", "))
    ).join()
  ]
}

#let yrkande(..att_satser) = {
  heading([Yrkande])
  par([Med ovanstående som bakgrund yrkar #[]<pronomen> på:])
  v(0.25em)
  list(indent: 1em, spacing: 1em, ..att_satser.pos().map(value => text(weight: "bold", [att]) + value))
}

#let lista(..events) = {
  let new_events = events
    .pos()
    .map(event => (event.at(0), event.slice(1).map(par).join()))
    .flatten()
  set grid.cell(breakable: false)
  grid(
    columns: (2.2cm, auto),
    row-gutter: 5mm,
    column-gutter: 5mm,
    align: (col, row) => if col == 0 { right } else { left },
    ..new_events
  )
}
