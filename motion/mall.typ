#import "template.typ": *
#show: conf.with(
  motion_name: "En lustig motion!",
  people: (
    // Name och year är obligatoriska! Post och commitee är upp till var och en! 
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
