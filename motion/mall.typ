#import "template.typ": *
#show: conf.with(
  motion_name: "En lustig motion!",
  people: (
    // Name är obligatorisk! Post, year och commitee är upp till var och en! 
    // OBS! Name kan vara ex dHack'25 om ni vill skicka ifrån en kommitte. I så fall, lämna year blankt.
    ( 
      name: "Emily Tiberg",
      post: "Ordförande", 
      committee: "DNS",
      year: "d23",
    ),
    // ( 
    //   name: "Simon Renhult",
    //   post: "Vice Ordförande",
    //   committee: "DNS",
    //   year: "d23",
    // ),
  ),
  // Ni kan ändra den här om ni verkligen vill, kommer defaulta till Styrets mail.
  // mail: "dns@dtek.se"
)

#yrkande(
[
  small test
],
[
  big big test
],
)
