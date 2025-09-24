#import "template.typ": conf

#let arr(..events) = {
  let new_events = events
    .pos()
    .map(event => (event.at(0), event.slice(1).map(par).join()))
    .flatten()
  grid(
    columns: (auto, auto),
    row-gutter: 5mm,
    column-gutter: 5mm,
    align: (col, row) => if col == 0 { right } else { left },
    ..new_events
  )
}

#let pagar(text, description) = arr("Pågår", text, description)
#let avslutat(text, description) = arr("Avslutat", text, description)
#let vantar(text, description) = arr("Väntar", text, description)
#let ny(text, description) = arr("Ny", text, description)

#show heading: set block(below: 1em)
#show: conf.with(
  name:  // Ändra till ditt namn här i en sträng.
    "Emily Tiberg",
  year: [ // Ändra till verksamhetsår
    20xx/20xx
  ],
  committee: [ // Ändra till din kommitteec
    Kommitte
  ],
  period: [ // Ändra till period rapporten gäller för
    20YY-MM-DD -- 20YY-MM-DD 
  ],
  // Ta bort kommentarerna under här om du vill ändra på mail eller post, dessa kommer vara "styret@dtek.se" samt "ordförande" om du inte ändrar de.
  // mail: "dnollk@dtek.se",
  // post: "kassör",
)

= Arrangemang
#arr( 
  (
    [20 Maj],
    [Test],
    [#lorem(50)]
  ),
  (
    [21 Maj],
    [Test 2]
  ),
  (
    [22 Maj],
    [Test],
    [#lorem(50)]
  )
)
