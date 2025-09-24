#show heading: set block(below: 1em)
#set page(columns: 1)
#import "template.typ": conf
#let arr(label, text, description) = { 
  grid(
    columns: (auto, 1fr),
    row-gutter: (10pt),
    list(marker: "", label + h(2em)),
    text,
    if (description != "") { "" },
    if (description != "") { description }
  )
}
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
#arr("20 Maj", "Ballmers peak plugg", "Under detta arret hände en massa grejer! Typ det här och det här och den där grejen och någon sprängdes och sedan kom polisen och sedan")
