#import "template.typ": *

#show: conf.with(
  // Ändra till ditt namn här
  name: "Namn Namnsson",
  // Ändra till verksamhetsår
  year: [ 20xx/20xx ],
  // Ändra till din kommittee
  committee: [ Kommitte ],
  // Ändra till period rapporten gäller för
  period: [ YYYY-MM-DD -- YYYY-MM-DD ],
  // Ta bort kommentarerna under här om du vill ändra på mail eller post, dessa kommer vara "styret@dtek.se" samt "Ordförande" om du inte ändrar dem.
  // mail: "dnollk@dtek.se",
  // post: [Kassör],
)

= Arrangemang

#lista(
  (
    [20 Maj],
    [Arr utan beskrivning]
  ),
  (
    [21 Maj],
    [Arr med en beskrivning],
    [Här kan du skriva en längre och mer detaljerad beskrivning av ditt arr om du vill det.]
  ),
  (
    [22 Maj],
    [Test],
    [#lorem(50)]
  )
)

= Aspning

#lista(
  ny(
    [Test],
    [#lorem(10)]
  ),
  vantar(
    [21 Maj],
    [Test 2]
  ),
  pagar(
    [Test],
    [#lorem(10)]
  ),
  avslutat(
    [Test],
    [#lorem(10)]
  )
)
