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
  // Varje arr är inom parenteser, där inne kan man ha 1-3 par hakparentser och
  // skriva text i. För arr så har man typiskt sett datum i första blocket, vad
  // det är för arr i andra blocket, och ibland en beskrivning i tredje
  // blocket.
  (
    [20 Maj],
    [Arr utan beskrivning]
  ), // Efter att ha stängt parentesen så kan du sätta ett kommatecken och påbörja en beskrivning av ett nytt arr.
  (
    [21 Maj],
    [Arr med en beskrivning],
    [Här kan du skriva en längre och mer detaljerad beskrivning av ditt arr om du vill det.]
  ),
)

= Mottagning
#lista(
  // Man kan skapa en lista manuellt med avslutat i men vi har också en
  // shortcut så att man bara behöver fylla i två block. Den första är ett namn
  // för arret och den andra är beskrivningen för arret
  avslutat(
    [Världens bästa sittning],
    [Tillsammans med elektro och industriell ekonomi så arrade vi världen största och bästa sittning, den var ball som fan och nollan älskade den]
  ),
  avslutat(
    [Mario kart gasque],
    [Nollan fick åka i gokarts inne på gasquen, GasqueK blev väldigt sura men nollan tyckte det var kul så det är lugnt]
  )
)

= Aspning
#lista(
  // Precis som för avslutat går det att göra samma med ny, pågår och väntar.
  ny(
    [Asparna handlar virke],
    [I år lät vi asparna följa med och handla virke för hästen, detta är i skillnad från förra året när vi gjorde det i förväg]
  ),
  pagar(
    [Aspar bygger en häst],
    [Asparna håller på att bygga en stor häst av trä som de ska kunna åka inuti, med denna så ska de invadera Troja]
  ),
  vantar(
    [Aspar invaderar Troja],
    [Det sista asptillfället som är planerat så kommer asparna faktiskt invadera Troja, detta sker om några veckor]
  )
)

= Rapportering av verksamhet
// Här skriver du in de punkter som finns i verksamhetsplanen och eventuella
// nya grejer som har dykt upp sedan dess. Ange även status på vilka saker som
// är avslutade/pågående/väntar. Det här stycket under punkt 4 är bara för dig
// som skriver så ta bort det om du inte har något extra du vill berätta eller
// vill sammanfatta en vis punkt av verksamheten.

== Något särskilt att belysa
Som ett exempel så har DNS under sommaren 2025 arbetat på att förbättra data101
boken. Här kan vi beskriva vad vi har gjort och hur vi har arbetat! Här kan de
skriva om att DNS har arbetat med programmet för att förbättra data101 för att
förbereda nya elever bättre att använda git och för att använda en
textredigerare.

// Punkterna här under är bara ett förslag, ni kan lägga till hur många ni vill.
== Mottagning
#lista(
  avslutat(
    [Världens bästa sittning],
    [Här är det lite vanligare att skriva långa beskrivningar om verksamhet, ni kan till exempel skriva att den här sittningen inte faktiskt gick så bra och att allting var en katastrof]
  ),
)

== Arrangemang
#lista(
  vantar(
    [Ett arr som vi ska hålla under nästa läsperiod],
    [Här kan ni skriva mer om varje arr, både de som redan är avslutade men också nya arr som inte har blivit av än eller som ni har börjat planera]
  ),
)
== Gentemot Skolan
#lista(
  pagar(
    [Arbetar med programledningen på X],
    [Här skriver man oftast om saker som har med skolan att göra]
  ),
  pagar(
    [Någonting ifrån verksamhetsplanen],
    [Oftast så skriver man saker här som också fanns med i verksamhetsplanen. Detta kan vara planer för pubar eller stora arr som vi behöver kommunicera till högskolan eller programmet. Men också pågående eller väntande arbete som att omstrukturera något på skolan, bygga om någonting i basen, eller jobba på ett projekt med högskolan]
  ),
  vantar(
    [Skapa en enkät för mastersarbetet],
    [DNS ska arbeta med programmet för att utveckla en enkät för att utvärdera mastersarbetet]
  ),
  avslutat(
    [Hålla kursnämdsmöte för kandidatarbetet],
    [DNS har under hösten hållt i ett kursnämdsmöte för kandidatarbetet som gick jättebra!]
  )
)

== Rutinarbete
#lista(
  pagar(
    [Se till att datas infrastruktur fungerar],
    [dHack ska kontinuerligt se till att ingenting gå sönder och att få tjänster att fungera igen]
  ),
  pagar(
    [Nollanstäd],
    [Drust ska se till att nollanstädet fortsätter och att det sköts bra varje vecka och ge rödkort till de som inte städar]
  )
)

== En till punkt
#lista( // För att skapa en till lista med något arbiträrt i första kolumnen så går det också att göra
  (
    [Nedlagt],
    [Ett jättedåligt arr],
    [Det här arret var en katastrof och vi kommer lägga ner det och se till att våra efterträdare aldrig håller det igen]
  ), // Det går också att mixa egna listor och våra presets
  avslutat(
    [Vi har gjort någonting mer till exempel förbättrat våran överlämning],
    [Våran överlämning har varit väldigt dålig så vi gjorde om den för att vara bättre]
  ),
  (
    [Återupplevt],
    [Ett gammalt arr],
    [Vi har börjat med det här gamla arret igen! Det var jättekul]
  )
)
